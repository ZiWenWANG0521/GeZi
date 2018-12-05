$(function(){
    if(location.search.indexOf("kwords")!=-1){
        var kwords=decodeURI(
            location.search.split("=")[1]
        );
        var pno=0;
        function loadPage(no=0){
            pno=no;
        $.ajax({
            url:"http://localhost:3000/products",
            type:"get",
            data:{kwords,pno},
            dataType:"json",
            success:function(output){
                var { products,pageCount }=output;
                var html="";
                for(var p of products){
                    var {sid,title,price,price_old,img_url,img_logo}=p
                    html += ` <div class="pro_item item_228" data-sid="${sid}" >
                        <a href="#" title="Aptamil/爱他美 奶粉白金版 800g（英国直邮/包邮包税）" class="pro_infor">
                            <div class="pro_infor_img">
                                <img src="${img_url}" alt="Aptamil/爱他美 奶粉白金版 800g（英国直邮/包邮包税）" class="pro_img">
                            </div>
                            <div class="pro_msg">
                                <div class="pro_tit">${title}</div>
                                <div class="pro_price">
                                    ￥${price.toFixed(2)}
                                    <span class="market_price">￥${price_old.toFixed(2)}</span>
                                </div>
                                <div class="nation_msg">
                                    <img src="${img_logo}" alt="" class="nation_flag">
                                </div>
                            </div>
                            <div class="sale_msg"></div>
                        </a>
                    </div>`
                }
               $("#main_list").html(html);

                var html="";
                for(var i=1;i<=pageCount;i++){
                    html +=` <li class="item" ${i==pno+1?'active':''}>
                                <a class="on">${i}</a>
                            </li>`
                }

                $("#page").children().first().next().html(html);


                if(pno==0){
                    $("#page").children().first().addClass("disabled")
                }else{
                    $("#page").children().first().removeClass("disabled")
                }
                if(pno==pageCount-1){
                    $("#page").children().last().addClass("disabled")
                }else{
                    $("#page").children().last().removeClass("disabled")
                }
            }
        })
        }
        loadPage();
        $("#page").on("click","a",function(e){
            e.preventDefault();
            var $a=$(this);
            //除了禁用和当前正在激活按钮之外才能点击
            if(!$a.parent().is(".disabled,.active")){
                if($a.parent().is(":first-child"))//上一页
                    var no=pno-1;//新页号=当前页号-1
                else if($a.parent().is(":last-child"))
                    var no=pno+1;//新页号=当前页号+1
                else//1、2、3按钮
                    var no=$a.html()-1;//新页号=按钮内容-1
                loadPage(no);//重新加载新页号的页面内容
            }

        });
    }



        $("div.navAttrsGroup").on("click","div.rowDropBtn",function(){
          var $btn=$(this);
          var nt=$btn.next();
          if(nt.is(":hidden")){
              nt.show([1000]);
              $btn.children().removeClass("dropDownIcon").addClass("dropUpIcon");
          }else{
              nt.hide([1000]);
              $btn.children().removeClass("dropUpIcon").addClass("dropDownIcon");
          }
        })
    $("div.tab_select>div.dt").on("click",function(){
        var dd=$("div.tab_select").children().first().next()
        if(dd.is(":hidden")){
            dd.show([1000])
        }else{
            dd.hide([1000])
        }
    })

    $("a.priceDrop").on("click",function(){
        var $btn=$(this);
        var drop=$btn.next().next();
       if(drop.is(":hidden")){
           drop.show();
       }else{
           drop.hide();
       }
    })
    $("#main_list").on("click","div.pro_item",function(){
         var $btn=$(this);
         var sid=$btn.attr("data-sid");
         location.href="shop.html?sid="+sid
    })
})