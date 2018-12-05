$(function(){
 $("<link rel='stylesheet' href='CSS/header.css'>").appendTo("head");
 $.ajax({
     url:"http://localhost:3000/header.html",
     type:"get",
     success:function(res){
         $("#header").replaceWith(res);
         $("#btnLogin").click(function(){
             location.href="login.html?back="+location.href;
         })
         $.ajax({
             url:"http://localhost:3000/user/islogin",
             type:"get",
             dataType:"json",
             success:function(res){
                 if(res.ok==0){
                     $("#btnLogin").show().next().hide();
                 }else
                 $("#btnLogin").hide().next().show();
                 $("#show_msg").html(res.uname);
             }
         })

         $("#btnSignout").click(function(){
             $.ajax({
                 url:"http://localhost:3000/user/signout",
                 type:"get",
                 success:function(){ location.reload(); }
             })
         })
         /*点击下拉搜索菜单*/
         $("div.row_1").on("click",function(){
             var drop=$("div.row_1_1");
             if(!drop.is(":hidden")){
                 drop.hide()
             }else{
                drop.show()
             }
         })
         /*搜索框*/
         var $btnSearch=$("div.rowSelect>input:last-child");
         $btnSearch.click(function(e){
             e.preventDefault()
             var kw=$("div.rowSelect>div.row_1").next().children().first().val().trim();
             if(kw!==""){
                 location.href="products.html?kwords="+kw
             }
         })
         $("div.rowSelect").keyup(function(e){
             if(e.keyCode==13)
                 $btnSearch.click()
         })
         if(location.search.indexOf("kwords")!=-1){
             var kwords=decodeURI(
                 location.search.split("=")[1]
             )
             $("div.rowSelect>div.row_1").next().children().first().val(kwords)
         }
     }
 })
});