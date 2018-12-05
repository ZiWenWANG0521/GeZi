$(function(){
    $.ajax({
        url:"http://localhost:3000/rec/getrec",
        type:"get",
        dataType:"json",
        success:function(res){
            /*三同品质*/
            var {title,details,price,price_old,img_url}=res[0];
            var html=` <a href="" class="clear">
                            <div class="img_box">
                                <img src="${img_url}" alt="" class="lazy" style="display:inline-block">
                            </div>
                            <div class="info">
                                <div class="tit">${title}</div>
                                <div class="txt">${details}</div>
                                <div class="sale_price" style="visibility:visible">￥${price.toFixed(2)}</div>
                            </div>
                        </a>`
            $("#Pro1").children().first().html(html);

            var html="";
            for(var p of res.slice(1,19)){
                var {title,details,price,price_old,img_url}=p;
                html+=` <div class="floorBox">
                        <a href="">
                        <div class="img_box">
                            <img src="${img_url}" class="lazy" alt="【格子优选】阿拉斯加鳕鱼肉500g 【纯野生+无污染+补脑+无刺+低脂肪+校园餐】">
                        </div>
                        <div class="info">
                            <div class="tit">${title}</div>
                            <div class="sale_price" style="visibility:visible">￥${price.toFixed(2)}
                                <span class="saveMoney">
                                            节省￥
                                            <i class="monyNum">${price_old.toFixed(2)}</i>
                                        </span>
                            </div>
                        </div>
                    </a>
                    </div>`
            }
           $("#Pro1").append(html)

            /*品质优选*/
            var {title,details,price,price_old,img_url}=res[19];
            var html=` <a href="" class="clear">
                            <div class="img_box">
                                <img src="${img_url}" alt="" class="lazy" style="display:inline-block">
                            </div>
                            <div class="info">
                                <div class="tit">${title}</div>
                                <div class="txt">${details}</div>
                                <div class="sale_price" style="visibility:visible">￥${price.toFixed(2)}</div>
                            </div>
                        </a>`
            $("#Pro2").children().first().html(html);

            var html="";
            for(var p of res.slice(20)){
                var {title,details,price,price_old,img_url}=p;
                html+=` <div class="floorBox">
                        <a href="">
                        <div class="img_box">
                            <img src="${img_url}" class="lazy" alt="【格子优选】阿拉斯加鳕鱼肉500g 【纯野生+无污染+补脑+无刺+低脂肪+校园餐】">
                        </div>
                        <div class="info">
                            <div class="tit">${title}</div>
                            <div class="sale_price" style="visibility:visible">￥${price.toFixed(2)}
                                <span class="saveMoney">
                                            节省￥
                                            <i class="monyNum">${price_old.toFixed(2)}</i>
                                        </span>
                            </div>
                        </div>
                    </a>
                    </div>`
            }
            $("#Pro2").append(html)
        },
    })

    $(window).scroll(function(){
        var scrollPos=$(window).scrollTop();
        if(scrollPos>=250){
            $("div.nav").addClass("showAn")
        }else{
            $("div.nav").removeClass("showAn").addClass("hideAn")
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
})