$(function(){
    $("<link rel='stylesheet' href='CSS/footer.css'>").appendTo("head");
    $.ajax({
        url:"http://localhost:3000/footer.html",
        type:"get",
        success:function(res){
            $("#footer").replaceWith(res);
        }
    })
});