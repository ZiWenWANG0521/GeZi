$(function() {
    $("#_submit>input").click(function () {
        var uname = $("#uname_text>input").val()
        var upwd = $("#uname_pwd>input").val()
        $.ajax({
            url: "http://localhost:3000/user/signin",
            type: "post",
            data: {uname,upwd},
            dataType: "json",
            success: function (res) {
                if (res.ok == 0) {
                    alert(res.msg);
                } else {
                    alert("登录成功,即将跳转回登录页");
                    if (location.search.startsWith("?back=")) {
                        var url = location.search.slice(6)
                    } else {
                        var url = "index.html"
                    }
                    location.href = url;
                }

            }
        })
    })
})