const http=require('http');
const fs=require('fs');
const url=require('url');

const myserver=http.createServer((req,res)=>{
  if(req.url==='/favicon.ico')return res.end();

    const log=`${Date.now()}:${req.url}New req rec\n`;
    const myurl=url.parse(req.url,true);
    console.log(myurl);
    //console.log("New req rec");
    fs.appendFile('log.txt',log,(err,data)=>{
       switch(myurl.pathname){
        case '/': res.end("home Page");
        break;
        case '/about':
            const username=myurl.query.myname;
            res.end(`Hi ${username}, I am harsh singh`);
        break;

        case '/search':
            const search=myurl.query.search_query;
            res.end(`You searched for: ${search}`);
        default: res.end("404 page not found");
       }
    })
})

myserver.listen(8000,()=>("server started"));