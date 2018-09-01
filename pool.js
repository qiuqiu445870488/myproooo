//创建mysql连接池
const mysql = require('mysql');//请求node的mysql模块
var pool = mysql.createPool({//创建连接池
  host: '127.0.0.1',//地址
  user: 'root',//用户名
  password: '',//密码
  database: 'web1805',//数据库
  connectionLimit: 10 //连接限制
});
//console.log(pool)
//把创建好的连接池导出
module.exports = pool;//导出连接池

