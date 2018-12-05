$(function(){
   /*轮播图*/
    function task(){
        var img=document.querySelector("li.show");
        img.className="";
        var next=img.nextElementSibling;
        if(next!=null){
            next.className="show";
        }else{
            img.parentNode.children[0].className="show"
        }
    }
    var timer=setInterval(task,3000);
    var jSlick=document.querySelector("ul.j-slick-track");
    jSlick.onmouseover=function(){
        clearInterval(timer);
    }
    jSlick.onmouseout=function(){
        setInterval(task,5000);
    }
    /*导航菜单*/
     $("div.ddinner").on("mouseover","a",function(e){
        e.preventDefault();
        var $over=$(this);
        var id=$over.attr("data-target");
        var dropdwon=$(".dropDown");
        var div=$(id);
        if(dropdwon.is(":hidden")){
            dropdwon.css("display","block");
            div.show().siblings().hide()
        }else{
            div.show().siblings().hide()
        }
    })
    $("div.dd").on("mouseleave",function(){
        $("div.dropDown").css("display","none");
    })

    /*定距侧导航*/
  //  var navOffset=$("div.left_nav").offset().top();
    $(window).scroll(function(){
       var scrollPos=$(window).scrollTop();
       if(scrollPos>=550){
          $("div.left_nav").addClass("showAn")
        }else{
           $("div.left_nav").removeClass("showAn").addClass("hideAn")
       }
    })
    /*侧导航栏滑动到指定位置*/
     $("div.wrap>ul>li>a").click(function(){
        var href=$.attr(this,'href');
        $("html,body").animate({
            scrollTop:$(href).offset().top
        },800);
     })
    /*格子优选跳转*/
    $("div.adList>a").on("click",function(){
         location.href="rec.html"
    })
})