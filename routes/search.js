const express=require("express")
const router=express.Router()
const pool=require("../pool")


router.get("/",(req,res)=>{
        var sid=req.query.sid;
        var sql="SELECT * FROM gz_search WHERE sid=?";
    pool.query(sql,[sid],(err,result)=>{
        if(err) console.log(err);
        res.writeHead(200,{
            "Content-Type":"application/json;charset=utf-8",
            "Access-Control-Allow-Origin":"*"
        });
        res.write(JSON.stringify(result));
        res.end()
    })
})
module.exports=router;