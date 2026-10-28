const http=require('http');
const fs=require('fs');
const url=require('url');

const myserver=http.createServer((req,res)=>{
  if(req.url==='/favicon.ico')return res.end();

    const log=`${Date.now()}:${req.method} ${req.url}New req rec\n`;
    const myurl=url.parse(req.url,true);
   // console.log(myurl);
    //console.log("New req rec");
    fs.appendFile('log.txt',log,(err,data)=>{
       switch(myurl.pathname){
        case '/':
            if(req.method==='GET'){
                res.end("Hello from home page");
            }
        break;
        case '/about':
            const username=myurl.query.myname;
            res.end(`Hi ${username}, I am harsh singh`);
        break;

        case '/search':
            const search=myurl.query.search_query;
            res.end(`You searched for: ${search}`);
            break;
            case '/signup':
                if(req.method==='GET'){
                    res.end("Signup page");
                }
                else if(req.method==='POST'){
                    res.end("Signup form submitted");
                }
        default: res.end("404 page not found");
       }
    })
})

myserver.listen(8000,()=>("server started"));