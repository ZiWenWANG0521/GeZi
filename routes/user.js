const express=require('express');
const pool=require('../pool');
var router=express.Router();

/*登录*/
router.post("/signin",(req,res)=>{
    var uname=req.body.uname;
    var upwd=req.body.upwd;
    //console.log(uname,upwd);
    pool.query(
        "select * from gz_user where uname=? and upwd=?",
        [uname,upwd],
        (err,result)=>{
            if(err) console.log(err);
            if(result.length>0){
                res.writeHead(200);
                var user=result[0];
                req.session.uid=user.uid;
                res.write(JSON.stringify({
                    ok:1
                }))
            }else{
                res.write(JSON.stringify({
                    ok:0,
                    msg:"用户名或密码错误！"
                }))
            }
            res.end();
        }
    )
})

/*判断是否登录*/
router.get("/islogin",(req,res)=>{
  res.writeHead(200);
  if(req.session.uid===undefined){
    res.write(JSON.stringify({ok:0}))
    res.end()
  }else{
    var uid=req.session.uid;
    var sql=
     "select * from gz_user where uid=?"
    pool.query(sql,[uid],(err,result)=>{
      if(err) console.log(err);
      var user=result[0];
      res.write(JSON.stringify({
        ok:1,uname:user.uname
      }))
      res.end()
    })
  }

});
router.get("/signout",(req,res)=>{
    req.session["uid"]=undefined;
    res.end();
})
router.post('/register',(req,res)=>{
		var $uname=req.body.uname;
		var $upwd=req.body.upwd;
		var $email=req.body.email;
		if(!$uname){
			res.send('用户名不能为空');
			return;
		}
		if(!$upwd){
			res.send('密码不能为空');
			return;
		}

		var sql="INSERT INTO gz_user values(NULL,?,?,NULL,NULL,?)"
        pool.query(sql,[$uname,$upwd,$email],(err,result)=>{
			   if(err) throw err;
			   if(result.affectedRows>0){
				res.send({code:1});
			   }else{
			    res.send({code:0});
			   }
		});
		
	 })
module.exports=router;



