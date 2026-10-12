#include "chat.h"
#include "server-task.h"
#include "llama-grammar.h"
#include "llama-vocab.h"
#include "unicode.h"
#include <algorithm>
#include <fstream>
#include <iostream>
#include <iterator>
#include <stdexcept>

// Character-only grammar checks use nullptr vocabulary, as upstream test-chat does.
// The Windows DLL does not export these internal methods. Any unexpected token
// operation fails the harness instead of simulating a tokenizer or loading weights.
int32_t llama_vocab::tokenize(const char *, int32_t, llama_token *, int32_t, bool, bool) const { throw std::runtime_error("unexpected vocabulary access"); }
const std::string & llama_vocab::token_to_piece(llama_token) const { throw std::runtime_error("unexpected vocabulary access"); }
bool llama_vocab::is_eog(llama_token) const { throw std::runtime_error("unexpected vocabulary access"); }

static bool grammar_accepts(const std::string & gbnf, const std::string & text) {
    auto grammar = std::unique_ptr<llama_grammar>(llama_grammar_init_impl(nullptr, gbnf.c_str(), "root", false, nullptr, 0, nullptr, 0));
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
        if (argc != 3) throw std::runtime_error("usage: parser-probe template.jinja output.json");
        std::ifstream file(argv[1]);
        std::string tmpl((std::istreambuf_iterator<char>(file)), {});
        auto templates = common_chat_templates_init(nullptr, tmpl);
        json tools = json::parse(R"([{"type":"function","function":{"name":"read","description":"Read a local path; selectors inline.","parameters":{"type":"object","properties":{"i":{"type":"string","description":"concise intent"},"path":{"type":"string"}},"required":["path","i"],"additionalProperties":false}}}])");
        common_chat_templates_inputs in;
        in.messages = common_chat_msgs_parse_oaicompat(json::parse(R"([{"role":"user","content":"Read src/tool-loop-guard.ts:147-180."}])"));
        in.tools = common_chat_tools_parse_oaicompat(tools);
        in.use_jinja = true;
        in.add_generation_prompt = true;
        in.parallel_tool_calls = true;
        in.enable_thinking = false;
        in.reasoning_format = COMMON_REASONING_FORMAT_DEEPSEEK;
        auto params = common_chat_templates_apply(templates.get(), in);
        common_chat_parser_params parser(params);
        parser.reasoning_format = COMMON_REASONING_FORMAT_DEEPSEEK;
        parser.parser.load(params.parser);
        std::string call = "<tool_call>read<arg_key>i</arg_key><arg_value>Reading complete method</arg_value><arg_key>path</arg_key><arg_value>src/tool-loop-guard.ts:147-180</arg_value></tool_call>";
        std::string second = "<tool_call>read<arg_key>i</arg_key><arg_value>Reading second file</arg_value><arg_key>path</arg_key><arg_value>src/other.ts</arg_value></tool_call>";
        std::string markup = "<tool_call>read<arg_key>i</arg_key><arg_value>Reading complete method</a></arg_key>\n<p>path</p></arg_value><arg_key>path</arg_key><arg_value>src/file.ts</arg_value></tool_call>";
        json report = {{"grammar", params.grammar}, {"prompt", params.prompt}, {"additional_stops", params.additional_stops}, {"generation_prompt", params.generation_prompt}, {"checks", json::array()}};
        std::vector<std::pair<std::string,std::string>> cases = {{"single",call},{"multiple",call+second},{"repeated",call+call+call},{"markup-value",markup},{"truncated",call.substr(0, call.find("</arg_value>")+5)},{"native-end",call+"</assistant>"}};
        std::string many;
        for (int i=0;i<98;++i) many += call;
        cases.push_back({"98-native-fixture",many});
        for (auto & [name, raw] : cases) {
            json entry = {{"case",name},{"raw",raw},{"splits",json::array()}};
            try {
            auto full = common_chat_parse(raw, false, parser);
            entry["full"] = full.to_json_oaicompat();
            std::vector<size_t> chunks = name == "98-native-fixture" ? std::vector<size_t>{127,raw.size()} : std::vector<size_t>{1,2,7,raw.size()};
            for (size_t chunk : chunks) {
                task_result_state state(parser);
                json deltas = json::array();
                json normal_deltas = json::array();
                for (size_t pos=0; pos<raw.size(); pos+=chunk) {
                    server_task_result_cmpl_partial partial{};
                    partial.content = raw.substr(pos,chunk);
                    partial.n_decoded = int(pos+1);
                    partial.oaicompat_cmpl_id = "probe";
                    partial.oaicompat_model = "laguna";
                    partial.update(state);
                    for (const auto & event : partial.to_json_oaicompat_chat()) normal_deltas.push_back(event);
                    partial.verbose = true;
                    for (const auto & event : partial.to_json_oaicompat_chat()) deltas.push_back(event);
                }
                server_task_result_cmpl_final final{};
                final.oaicompat_cmpl_id = "probe";
                final.oaicompat_model = "laguna";
                final.stop = name == "truncated" ? STOP_TYPE_LIMIT : STOP_TYPE_WORD;
                final.stream = true;
                final.update(state);
                for (const auto & event : final.to_json_oaicompat_chat_stream()) deltas.push_back(event);
                entry["splits"].push_back({{"size",chunk},{"events",deltas},{"normal_events",normal_deltas},{"final",state.chat_msg.to_json_oaicompat()}});
            }
            } catch (const std::exception & e) { entry["exception"] = e.what(); }
            report["checks"].push_back(std::move(entry));
        }
        report["grammar_checks"] = {{"single",grammar_accepts(params.grammar,call)}, {"multiple",grammar_accepts(params.grammar,call+second)}, {"native-end",grammar_accepts(params.grammar,call+"</assistant>")}, {"markup-value",grammar_accepts(params.grammar,markup)}};
        in.parallel_tool_calls = false;
        auto serial = common_chat_templates_apply(templates.get(),in);
        report["serial_grammar_checks"] = {{"single",grammar_accepts(serial.grammar,call)}, {"multiple",grammar_accepts(serial.grammar,call+second)}};
        report["grammar_checks"]["multiple-native-end"] = grammar_accepts(params.grammar,call+second+"</assistant>");
        report["grammar_checks"]["call-after-native-end"] = grammar_accepts(params.grammar,call+"</assistant>"+second);
        report["serial_grammar_checks"]["native-end"] = grammar_accepts(serial.grammar,call+"</assistant>");
        in.parallel_tool_calls = true;
        in.enable_thinking = true;
        auto thinking = common_chat_templates_apply(templates.get(),in);
        report["thinking_grammar_native_end"] = grammar_accepts(thinking.grammar,call+"</assistant>");
        in.messages = common_chat_msgs_parse_oaicompat(json::parse(R"([{"role":"user","content":"Read the file."},{"role":"assistant","content":"","tool_calls":[{"id":"call-1","type":"function","function":{"name":"read","arguments":"{\"i\":\"Inspect file\",\"path\":\"src/tool-loop-guard.ts:147-180\"}"}}]},{"role":"tool","tool_call_id":"call-1","content":"Fixture file contents."},{"role":"developer","content":"Static string tables use Record."}])"));
        auto continuation = common_chat_templates_apply(templates.get(),in);
        report["tool_result_continuation_prompt"] = continuation.prompt;
        std::ofstream out(argv[2]); out << report.dump(2);
        std::cout << report["grammar_checks"].dump() << "\n" << report["serial_grammar_checks"].dump() << "\n";
        return 0;
    } catch (const std::exception & e) { std::cerr << e.what() << "\n"; return 1; }
}
