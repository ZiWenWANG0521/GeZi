$(function(){
    $("#_submit").on("click",function(){
        var uname=$("#uname").val();
        var email=$("#email").val();
        var upwd=$("#upwd").val();
    $.ajax({
        url:"http://localhost:3000/user/register",
        type:"post",
        data:{uname,upwd,email},
        dataType:"json",
        success:function(res){
            if(res.code==1){
                alert("注册成功，跳转到商城首页")
                location.href="http://localhost:3000/index.html";
            }else{
                alert("注册失败")
            }
        }
    })
    })
})