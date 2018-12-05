$(function(){
    /*小图导航*/
        $("div.slideImgsBox>ul.clear").on("click","li",function(){
            var $btn=$(this);
            var line=$btn.children("span");
            if(line.is(":hidden")){
              line.css("display","block");
              $btn.siblings().children("span").css("display","none")
            }
        })

    /*显示图*/
    $("div.slideImgsBox>ul.clear").on("click","li",function(){
        var $btn=$(this);
        var id=$btn.attr("data-target");
        var imgs=$("#img_show");
        var img=$(id);
        if(imgs.is(":hidden")){
            imgs.css("display","block");
            img.show().siblings().hide()
        }else{
            img.show().siblings().hide()
        }
    })
    /*罐装数量*/
        $("#color_13063").on("click","div.item",function(){
            var $btn=$(this);
            if(!$btn.hasClass("selected")){
                $btn.addClass("selected").siblings().removeClass("selected");
            }
        })
    /*数量*/
    $("span.amount_box").on("click","a",function(e){
        e.preventDefault()
        var $btn=$(this);
        var n=$btn.parent().children("input")
        var val=parseInt(n.val());
        var count=$btn.children();
        if(count.hasClass("amount_add_icon")){
                    val++
        }else if(val>1){
            val--
        }
        n.val(val);
    })
    /*显示相对应的图片*/
    var sid=location.search.split("=")[1]
    $.ajax({
        url:"http://localhost:3000/search",
        type:"get",
        data:{sid},
        dataType:"json",
        success:function(res){
            var {title,price,price_old}=res[0];
            var html=`<div class="pro_name">
                        <div class="pro_name_main">
                            <h1>${title}</h1>
                            <div class="pro_logo">
                                <img src="img/search/2017041015001465509544.png" alt="" class="logo_img">
                            </div>
                        </div>
                    </div>
                       <div class="price_inof">
                        <div class="pro_price clear">
                            <div class="bb_price " memberlevel="见习格粉">
                                <div id="bb_price">￥<em>${price}</em></div>
                                <div class="attach_price">
                                    <span id="ab_price">￡39.78</span>
                                    <span id="p_price">参考价<del>￥${price_old}</del>   </span>
                                    <span id="sale_price" style="display: inline;">省￥130.00</span>
                                    <div class="from_href">此商品价格参考<a class="web_href" href="https://www.britishcornershop.co.uk/aptamil-profutura-first-milk" target="_blank">www.britishcornershop.co.uk</a></div>
                                </div>
                            </div>
                        </div>
                    </div> `

            $("#rep").html(html)
        }
    })
    $("#add_cart").on("click",function(){
        $.ajax({
            url:"http://localhost:3000/user/islogin",
            type:"get",
            dataType:"json",
            success:function(res){

                if(res.ok==1){
                    var input=$("#amount").children().children("input");
                    var count=input.val();
                    $.ajax({
                        url:"http://localhost:3000/cart/add",
                        type:"get",
                        data:{count}
                    })
                    alert("添加成功")
                }else{
                    alert("请先登录");
                }
            }
        })
    })
})