// Uses OMP's installed adapter with an injected in-memory fetch; executes no tools.
import { readFileSync, readdirSync, writeFileSync } from 'node:fs';
import { dirname, join } from 'node:path';
import { fileURLToPath } from 'node:url';
const root=dirname(fileURLToPath(import.meta.url));
const { streamOpenAICompletions }=await import('C:/Users/barrett/.bun/install/global/node_modules/@oh-my-pi/pi-ai/src/providers/openai-completions.ts');
const model:any={id:'laguna-s-2.1-iq3-s',name:'Laguna capture replay',api:'openai-completions',provider:'laguna',baseUrl:'http://127.0.0.1:1235/v1',reasoning:true,input:['text'],cost:{input:0,output:0,cacheRead:0,cacheWrite:0},contextWindow:131072,maxTokens:8192,compatConfig:{supportsStore:false,supportsDeveloperRole:false,supportsReasoningEffort:false,maxTokensField:'max_tokens',reasoningContentField:'reasoning_content'}};
const results:any[]=[];
async function replay(name:string,bytes:Uint8Array,expected:number,stop:string,expectedMalformed=false,expectedCalls:any[]=[]) {
    let outgoing:any;
    const fakeFetch=async (_url:any,init:any)=>{
        outgoing=JSON.parse(init.body);
        let offset=0;
        return new Response(new ReadableStream({pull(controller){
            if(offset>=bytes.length){controller.close();return;}
            controller.enqueue(bytes.slice(offset,offset+7));offset+=7;
        }}),{status:200,headers:{'content-type':'text/event-stream'}});
    };
    const stream=streamOpenAICompletions(model,{messages:[{role:'user',content:'Replay a captured tool response.',timestamp:Date.now()}],tools:[{name:'read',description:'Read a local path.',parameters:{type:'object',properties:{path:{type:'string'}},required:['path']}}]},{apiKey:'local-replay-only',fetch:fakeFetch} as any);
    const message=await stream.result();
    const calls=message.content.filter((c:any)=>c.type==='toolCall') as any[];
    const malformed=calls.filter(c=>'__parseError' in c.arguments);
    const argumentValuesMatch=expectedCalls.every((expectedCall,index)=>{
        const actual=calls[index];
        if(!actual||actual.id!==expectedCall.id||actual.name!==expectedCall.function.name)return false;
        try{return JSON.stringify(actual.arguments)===JSON.stringify(JSON.parse(expectedCall.function.arguments));}
        catch{return '__parseError' in actual.arguments;}
    });
    const entry={name,expected,calls:calls.length,uniqueIDs:new Set(calls.map(c=>c.id)).size,stopReason:message.stopReason,malformed:malformed.length,argumentValuesMatch,outgoing_parallel_tool_calls:outgoing?.parallel_tool_calls??'omitted',passed:calls.length===expected&&new Set(calls.map(c=>c.id)).size===expected&&message.stopReason===stop&&malformed.length===(expectedMalformed?1:0)&&argumentValuesMatch};
    results.push(entry);
    if(!entry.passed) throw new Error(JSON.stringify({entry,message}));
}
for(const prefix of ['instrument-multiple-stream-','instrument-text-ending-multiple-stream-']){
    const file=readdirSync(root).filter(f=>f.startsWith(prefix)&&f.endsWith('.sse')).sort().at(-1)!;
    const summary=JSON.parse(readFileSync(join(root,file.replace('.sse','.summary.json')),'utf8'));
    await replay(file,readFileSync(join(root,file)),summary.calls.length,summary.finish_reason==='length'?'length':'toolUse',summary.invalid_arguments.length>0,summary.calls);
}
const failure=JSON.parse(readFileSync(join(root,'failure-parsed.json'),'utf8'));
const calls=failure.message.content.filter((c:any)=>c.type==='toolCall');
const frames:any[]=[];
for(const [index,call] of calls.entries()){
    frames.push({id:'synthetic-historical-shape',object:'chat.completion.chunk',choices:[{index:0,delta:{tool_calls:[{index,id:call.id,type:'function',function:{name:call.name,arguments:''}}]},finish_reason:null}]});
    for(let pos=0;pos<call.partialArgs.length;pos+=7){
        frames.push({id:'synthetic-historical-shape',object:'chat.completion.chunk',choices:[{index:0,delta:{tool_calls:[{index,function:{arguments:call.partialArgs.slice(pos,pos+7)}}]},finish_reason:null}]});
    }
}
frames.push({id:'synthetic-historical-shape',object:'chat.completion.chunk',choices:[{index:0,delta:{},finish_reason:'length'}]});
const synthetic=frames.map(f=>'data: '+JSON.stringify(f)+'\n\n').join('')+'data: [DONE]\n\n';
writeFileSync(join(root,'synthetic-98-fragmented.sse'),synthetic);
await replay('synthetic-98-fragmented (reconstructed API input; not historical raw output)',new TextEncoder().encode(synthetic),98,'length',true,calls.map((c:any)=>({id:c.id,function:{name:c.name,arguments:c.partialArgs}})));
writeFileSync(join(root,'omp-replay-results.json'),JSON.stringify({installed_adapter:'@oh-my-pi/pi-ai 18.9.2',scope:'Real installed OMP adapter, captured SSE plus an explicitly synthetic 98-call fixture; in-memory fetch only; no tools executed.',results},null,2));
console.log(JSON.stringify(results,null,2));
