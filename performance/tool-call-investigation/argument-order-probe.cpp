#include "chat.h"
#include "server-task.h"
#include "llama-grammar.h"
#include "llama-vocab.h"
#include <algorithm>
#include <fstream>
#include <iostream>
#include <iterator>
#include <stdexcept>

// As in the existing character-only probe, no model weights are loaded.
int32_t llama_vocab::tokenize(const char *, int32_t, llama_token *, int32_t, bool, bool) const { throw std::runtime_error("unexpected vocabulary access"); }
const std::string & llama_vocab::token_to_piece(llama_token) const { throw std::runtime_error("unexpected vocabulary access"); }
bool llama_vocab::is_eog(llama_token) const { throw std::runtime_error("unexpected vocabulary access"); }

static bool accepts(const std::string & grammar_text, const std::string & text) {
    auto grammar = std::unique_ptr<llama_grammar>(llama_grammar_init_impl(nullptr, grammar_text.c_str(), "root", false, nullptr, 0, nullptr, 0));
    if (!grammar) throw std::runtime_error("grammar initialization failed");
    auto & stacks = llama_grammar_get_stacks(grammar.get());
    for (unsigned char cp : text) {
        llama_grammar_accept(grammar.get(), cp);
        if (stacks.empty()) return false;
    }
    return std::any_of(stacks.begin(), stacks.end(), [](const auto & s) { return s.empty(); });
}

int main(int argc, char ** argv) {
    try {
        if (argc != 3) throw std::runtime_error("usage: argument-order-probe template.jinja report.json");
        std::ifstream file(argv[1]);
        std::string tmpl((std::istreambuf_iterator<char>(file)), {});
        auto templates = common_chat_templates_init(nullptr, tmpl);
        auto tools = json::parse(R"([{"type":"function","function":{"name":"write","description":"Write a file","parameters":{"type":"object","properties":{"i":{"type":"string"},"path":{"type":"string"},"content":{"type":"string"},"append":{"type":"boolean"}},"required":["i","path","content"],"additionalProperties":false}}}])");
        common_chat_templates_inputs in;
        in.messages = common_chat_msgs_parse_oaicompat(json::parse(R"([{"role":"user","content":"Write a file."}])"));
        in.tools = common_chat_tools_parse_oaicompat(tools);
        in.use_jinja = true;
        in.enable_thinking = false;
        in.add_generation_prompt = true;
        in.parallel_tool_calls = true;
        auto params = common_chat_templates_apply(templates.get(), in);
        common_chat_parser_params parser(params);
        parser.reasoning_format = COMMON_REASONING_FORMAT_DEEPSEEK;
        parser.parser.load(params.parser);
        json report = {{"grammar",params.grammar}, {"cases",json::array()}};
        std::vector<std::string> names = {"i","path","content","append"};
        std::vector<std::string> values = {"Create constant","scratch/status.ts","export const READY = true;\n","true"};
        auto call = [&](const std::vector<int> & order) {
            std::string raw = "<tool_call>write";
            for (auto i : order) raw += "<arg_key>" + names[i] + "</arg_key><arg_value>" + values[i] + "</arg_value>";
            return raw + "</tool_call>";
        };
        auto check = [&](const std::string & name, const std::string & raw, bool valid) {
            json entry = {{"name",name},{"raw",raw},{"expected_valid",valid},{"grammar_accepts",accepts(params.grammar,raw)}};
            try {
                auto msg = common_chat_parse(raw,false,parser);
                entry["parsed"] = msg.to_json_oaicompat();
            } catch (const std::exception & e) { entry["parse_error"] = e.what(); }
            if (valid) {
                entry["splits"] = json::array();
                for (size_t size : {size_t(1),size_t(2),size_t(7),raw.size()}) {
                    task_result_state state(parser);
                    json deltas = json::array();
                    for (size_t pos=0; pos<raw.size(); pos+=size) {
                        server_task_result_cmpl_partial partial{};
                        partial.content = raw.substr(pos,size);
                        partial.n_decoded = int(pos+1);
                        partial.oaicompat_cmpl_id = "order-probe";
                        partial.update(state);
                        for (const auto & event : partial.to_json_oaicompat_chat()) deltas.push_back(event);
                    }
                    entry["splits"].push_back({{"size",size},{"events",deltas},{"final",state.chat_msg.to_json_oaicompat()}});
                }
            }
            report["cases"].push_back(entry);
        };
        std::vector<int> order = {0,1,2};
        do { check("required-permutation",call(order),true); } while (std::next_permutation(order.begin(),order.end()));
        order = {0,1,2,3};
        do { check("optional-permutation",call(order),true); } while (std::next_permutation(order.begin(),order.end()));
        check("missing-i",call({1,2}),false);
        check("missing-path",call({0,2}),false);
        check("missing-content",call({0,1}),false);
        check("duplicate-required",call({0,1,2,0}),false);
        check("duplicate-optional",call({0,1,2,3,3}),false);
        check("multiple",call({1,2,0})+call({2,0,1}),true);
        check("native-end",call({1,2,0})+"</assistant>",true);
        report["boundaries"] = json::array();
        for (int count : {0,8,9}) {
            json properties = json::object();
            json required = json::array();
            std::string ordered = "<tool_call>boundary";
            std::string reversed = "<tool_call>boundary";
            for (int i=0; i<count; ++i) {
                std::string key = "a" + std::to_string(i);
                properties[key] = {{"type","string"}};
                required.push_back(key);
                ordered += "<arg_key>"+key+"</arg_key><arg_value>value</arg_value>";
            }
            for (int i=count-1; i>=0; --i) {
                reversed += "<arg_key>a"+std::to_string(i)+"</arg_key><arg_value>value</arg_value>";
            }
            ordered += "</tool_call>";
            reversed += "</tool_call>";
            auto schema = json{{"type","object"},{"properties",properties},{"required",required},{"additionalProperties",false}};
            auto boundary_tool = json{{"type","function"},{"function",{{"name","boundary"},{"parameters",schema}}}};
            in.tools = common_chat_tools_parse_oaicompat(json::array({boundary_tool}));
            auto boundary = common_chat_templates_apply(templates.get(),in);
            report["boundaries"].push_back({{"properties",count},{"ordered",accepts(boundary.grammar,ordered)},{"reversed",accepts(boundary.grammar,reversed)},{"grammar_bytes",boundary.grammar.size()}});
        }
        std::ofstream out(argv[2]); out << report.dump(2);
        int valid=0, accepted=0, invalid=0, rejected=0;
        for (const auto & entry : report["cases"]) {
            if (entry["expected_valid"].get<bool>()) { ++valid; if(entry["grammar_accepts"].get<bool>()) ++accepted; }
            else { ++invalid; if(!entry["grammar_accepts"].get<bool>()) ++rejected; }
        }
        std::cout << "Valid argument sequences accepted: " << accepted << "/" << valid << "; invalid rejected: " << rejected << "/" << invalid << "\n";
        return 0;
    } catch (const std::exception & e) { std::cerr << e.what() << "\n"; return 1; }
}
