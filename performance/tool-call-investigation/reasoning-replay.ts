// Installed OMP wire adapter; no live request and no tools executed.
import { writeFileSync } from 'node:fs';
const { streamOpenAICompletions } = await import('C:/Users/barrett/.bun/install/global/node_modules/@oh-my-pi/pi-ai/src/providers/openai-completions.ts');
const model: any = {id:'laguna-s-2.1-iq3-s',name:'Laguna wire check',api:'openai-completions',provider:'laguna',baseUrl:'http://127.0.0.1:1235/v1',reasoning:true,input:['text'],cost:{input:0,output:0,cacheRead:0,cacheWrite:0},contextWindow:131072,maxTokens:8192,compatConfig:{supportsStore:false,supportsDeveloperRole:false,supportsReasoningEffort:false,maxTokensField:'max_tokens',reasoningContentField:'reasoning_content'}};
let outgoing: any;
const fakeFetch = async (_url:any, init:any) => {
    outgoing = JSON.parse(init.body);
    const frame = {id:'replay',object:'chat.completion.chunk',choices:[{index:0,delta:{content:'Done.'},finish_reason:'stop'}]};
    return new Response('data: '+JSON.stringify(frame)+'\n\ndata: [DONE]\n\n',{headers:{'content-type':'text/event-stream'}});
};
const context: any = {messages:[
    {role:'user',content:'Read the fixture.',timestamp:1},
    {role:'assistant',api:'openai-completions',provider:'laguna',model:model.id,content:[{type:'thinking',thinking:'PRESERVED_REASONING_2741',thinkingSignature:'reasoning_content'},{type:'toolCall',id:'previous-read',name:'read',arguments:{i:'Inspect fixture',path:'scratch.ts'}}],stopReason:'toolUse',timestamp:2,usage:{input:1,output:1,cacheRead:0,cacheWrite:0,totalTokens:2,cost:{input:0,output:0,cacheRead:0,cacheWrite:0,total:0}}},
    {role:'toolResult',toolCallId:'previous-read',toolName:'read',content:[{type:'text',text:'Fixture contents.'}],isError:false,timestamp:3}
],tools:[{name:'read',description:'Read a path.',parameters:{type:'object',properties:{i:{type:'string'},path:{type:'string'}},required:['i','path']}}]};
await streamOpenAICompletions(model,context,{apiKey:'local',fetch:fakeFetch,reasoning:'low'} as any).result();
const previous = outgoing.messages.find((m:any)=>m.role==='assistant');
const result = {installed_adapter:'18.9.2',prior_reasoning_preserved:previous?.reasoning_content==='PRESERVED_REASONING_2741',reasoning_effort:outgoing.reasoning_effort??'omitted',parallel_tool_calls:outgoing.parallel_tool_calls??'omitted',outgoing};
writeFileSync(new URL('reasoning-replay-results.json',import.meta.url),JSON.stringify(result,null,2));
console.log(JSON.stringify({prior_reasoning_preserved:result.prior_reasoning_preserved,reasoning_effort:result.reasoning_effort,parallel_tool_calls:result.parallel_tool_calls}));
if(!result.prior_reasoning_preserved)throw new Error('Prior reasoning was lost');
