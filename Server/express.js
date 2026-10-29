const http=require('http');
const express=require('express');

const app=express();

app.get('/',(req,res)=>{
    return res.send("Hello from home page");
})

app.get('/about',(req,res)=>{
    return res.send("hello from About page " + " hey " + req.query.name  + "Your" +req.query.age);
});


app.post('/signup',(req,res)=>{
    return res.send("Signup form submitted");
})


app.listen(8000,()=>console.log("server started"));


/*const myserver=http.createServer(app);

myserver.listen(8000,()=>("server started"));*/