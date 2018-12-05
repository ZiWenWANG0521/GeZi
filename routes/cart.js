const express=require("express")
const router=express.Router()
const pool=require("../pool")

router.get("/add",(req,res)=>{
    var count=req.query.count;
    var uid=req.session.uid;
    pool.query(
        "select * from gz_shoppingcart_item where count=?",
        [count],
        (err,result)=>{
            if(err) console.log(err);
            if(result.length==0){
                pool.query(
                    "insert into gz_shoppingcart_item values(null,?,1,?,0)",
                    [uid,count],
                    (err,result)=>{
                        if(err) console.log(err);
                        res.end();
                    }
                )
            }else{
                pool.query(
                    "update gz_shoppingcart_item set count=count+? where user_id=?",
                    [count,uid],
                    (err,result)=>{
                        if(err) console.log(err);
                        res.end();
                    }
                )
            }
        }
    )

})


//http://localhost:3000/users/signin?uname=dingding&upwd=123456
//http://localhost:3000/cart/update?iid=35&count=新数量

module.exports=router;