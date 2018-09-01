//使用express构建web服务器 --11:25
const express = require('express');
const bodyParser = require('body-parser');
const imagelist = require('./routes/imagelist.js');
const newlist = require("./routes/newlist.js");
const commentlist = require("./routes/commentlist.js");
const photolist = require("./routes/photolist.js");
const goodlist = require("./routes/goodlist.js");


const cors =  require("cors");
var app = express();
//var server = app.listen(3000);
//使用body-parser中间件
app.use(bodyParser.urlencoded({extended:false}));
//托管静态资源到public目录下
app.use(express.static('public'));
//使用路由器来管理路由
//把user路由器挂载到/user下
app.use(cors({
    origin:["http://127.0.0.1:8080",
            "http://localhost:8080"],
           credentials:true  
    }))
app.use('/imagelist',imagelist);
app.use('/newlist',newlist);
app.use('/commentlist',commentlist);
app.use('/productlist',photolist);
app.use('/goodlist',goodlist);


app.listen(3000)