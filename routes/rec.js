const express=require('express');
const pool=require('../pool');
var router=express.Router();

router.get("/getrec",(req,res)=>{
    var sql="SELECT * FROM gz_rec_yx  where rid!=0 order by rid";
    pool.query(sql,[],(err,result)=>{
        if(err) console.log(err);
        //res.send(result);
        res.writeHead(200,{
            "Content-Type":"application/json;charset=utf-8",
            "Access-Control-Allow-Origin":"*"
        })
        res.write(JSON.stringify(result));
        res.end();
    })
})
module.exports=router;

