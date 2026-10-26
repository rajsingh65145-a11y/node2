const http=require('http');
const fs=require('fs');

const myserver=http.createServer((req,res)=>{
    const log=`${Date.now()}:${req.url}New req rec\n`;
    //console.log("New req rec");
    fs.appendFile('log.txt',log,(err,data)=>{
       switch(req.url){
        case '/': res.end("home Page");
        break;
        case '/about': res.end("Hi i am harsh singh");
        break;
        default: res.end("404 page not found");
       }
    })
})

myserver.listen(8000,()=>("server started"));