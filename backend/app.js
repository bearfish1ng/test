const express=require("express");
const mysql=require("mysql");
const db=require("./index.js");

const app=express();

app.set('port',3000);

app.get("/blog",(req,res)=>{
    db.connection.query('SELECT * FROM blog',(err,results)=>{
        if(err){
            console.log(err);
        }
        res.send(results);
    });
});

app.get("/gallery",(req,res)=>{
    db.connection.query('SELECT * FROM gallery',(err,results)=>{
        if(err){
            console.log(err);
        }
        res.send(results);
    });
});


app.get("/signup",(req,res)=>{
    const{username,password}=req.body;
    db.connection.query('INSERT INTO users(username,password) VALUE(?,?)',[username,password],(err,results)=>{
        if(err){
            console.log(err);
        }
        res.send('user registered');
    });
});

// 결과O => /blog 경로 리다이렉트
app.get("/login",(req,res)=>{
    db.connection.query('SELECT * FROM users WHERE username=?',[username],async(err,results)=>{
        if(err||results.length==0){
            console.log(err);
        }
        const user=results[0];
        if(password!=user.password){
            console.log(err);
        }
        else{
            app.get('/',(req,res)=>{
                res.redirect('/blog');
            })
        }
    });
});


app.listen(app.get("port"));
console.log("Listening on",app.get("port"));

//mvc