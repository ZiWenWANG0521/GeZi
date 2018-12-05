//使用express构建web服务器 --11:25
const express = require('express');
const bodyParser = require('body-parser');
const session = require('express-session');
/*引入路由模块*/
const user=require("./routes/user");
const rec=require("./routes/rec");
const products=require("./routes/products");
const cart=require("./routes/cart");
const search=require("./routes/search")


var app = express();
var server = app.listen(3000);
//使用body-parser中间件
app.use(bodyParser.urlencoded({extended:false}));
//托管静态资源到public目录下
app.use(express.static('public'));
app.use(session({
    secret: '128位随机字符串',
    resave: false,
    saveUninitialized: true,
}))
//req.session
/*使用路由器来管理路由*/
app.use("/user",user);
app.use("/rec",rec);
app.use("/products",products);
app.use("/cart",cart);
app.use("/search",search)
//接口地址http://localhost:3000/details/?lid=5

