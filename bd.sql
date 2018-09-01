#db.sql  15:48
#1:创建指定库 web1805
#建议:库名;表名;列名;英文全小写
#建议:特殊要求[苹果手机 utf8mb4]
SET NAMES UTF8;
DROP DATABASE IF EXISTS web1805;
CREATE DATABASE web1805 CHARSET=UTF8;
#2:进入 web1805库中
USE web1805;
#3:创建一张表 用户表       2条
#表名 user;列名uid uname upwd;列类型?
#所有表都添加一列 id 记录编号  99%
#效率高 1000 / 1w
CREATE TABLE user(
   uid INT PRIMARY KEY AUTO_INCREMENT,
   uname VARCHAR(25),
   upwd  VARCHAR(32)
);
#4:创建一张表 图片轮播表   10条
CREATE TABLE imagelist(
  id INT PRIMARY KEY AUTO_INCREMENT,
  img_url VARCHAR(255),
  title   VARCHAR(255)
 
);
INSERT INTO imagelist VALUES(null,'http://127.0.0.1:3000/img/index/banner1.png','phone');
INSERT INTO imagelist VALUES(null,'http://127.0.0.1:3000/img/index/banner2.png','phone');
INSERT INTO imagelist VALUES(null,'http://127.0.0.1:3000/img/index/banner3.png','phone');
INSERT INTO imagelist VALUES(null,'http://127.0.0.1:3000/img/index/banner4.png','phone');
#创建新闻表 [id;title;add_time;click;img_url]
CREATE TABLE news(
  id INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(255),
  add_time DATETIME,
  click    INT,
  img_url  VARCHAR(255), 
  content VARCHAR(255)
);
INSERT INTO news VALUES(null,'1.木屋',now(),0,'http://127.0.0.1:3000/img/avatar/1.jpg','想要这样一间小木屋，夏天挫冰吃瓜，冬天围炉取暖.');
INSERT INTO news VALUES(null,'2.幸福',now(),0,'http://127.0.0.1:3000/img/avatar/1.jpg','能和心爱的人一起睡觉，是件幸福的事情；可是，打呼噜怎么办？');
INSERT INTO news VALUES(null,'3.调色盘',now(),0,'http://127.0.0.1:3000/img/avatar/1.jpg','烤炉模式的城，到黄昏，如同打翻的调色盘一般.');
INSERT INTO news VALUES(null,'4.看世界',now(),0,'http://127.0.0.1:3000/img/avatar/1.jpg','静静的看这个世界，最后终于疯了');
#16:43
#创建服务器程序 xuezi


#16:24 添加四条记录
#5:创建一张表 图片列表     10条
#6:添加数据
#原文  123           密文 23892389dsiosxjke38ds
INSERT INTO user VALUES(null,'tom',md5('123'));
INSERT INTO user VALUES(null,'jerry',md5('123'));
#7:完成用户登录
#？7:查询所有图片轮播表数据
#？8:查询所有图片列表表数据 

CREATE TABLE t_comment(
  id INT PRIMARY KEY AUTO_INCREMENT,
  username VARCHAR(255),
  add_time DATETIME,
  content  VARCHAR(255),
  nid INT
 );
INSERT INTO t_comment VALUES(null,'hf1',now(),'h1',1);
INSERT INTO t_comment VALUES(null,'hf2',now(),'h1',1);
INSERT INTO t_comment VALUES(null,'',now(),'h1',1);
INSERT INTO t_comment VALUES(null,'fd4',now(),'h1',1);
INSERT INTO t_comment VALUES(null,'hd5',now(),'h1',1);
INSERT INTO t_comment VALUES(null,'hd6',now(),'h1',1);
INSERT INTO t_comment VALUES(null,'hf7',now(),'h1',1);
INSERT INTO t_comment VALUES(null,'hf8',now(),'h1',1);
INSERT INTO t_comment VALUES(null,'hd9',now(),'h1',1);
INSERT INTO t_comment VALUES(null,'fd10',now(),'h1',1);
INSERT INTO t_comment VALUES(null,'fd11',now(),'h1',1);
INSERT INTO t_comment VALUES(null,'hd12',now(),'h1',1);

CREATE TABLE t_photo(
  id INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(255),
  path VARCHAR(255)
 );
INSERT INTO t_photo VALUES(null,'唯美意境','http://127.0.0.1:3000/img/avatar/10.jpg');
INSERT INTO t_photo VALUES(null,'唯美意境','http://127.0.0.1:3000/img/avatar/11.jpg');
INSERT INTO t_photo VALUES(null,'唯美意境','http://127.0.0.1:3000/img/avatar/9.jpg');
INSERT INTO t_photo VALUES(null,'唯美意境','http://127.0.0.1:3000/img/avatar/8.jpg');
INSERT INTO t_photo VALUES(null,'唯美意境','http://127.0.0.1:3000/img/avatar/7.jpg');
INSERT INTO t_photo VALUES(null,'唯美意境','http://127.0.0.1:3000/img/avatar/6.jpg');
INSERT INTO t_photo VALUES(null,'唯美意境','http://127.0.0.1:3000/img/avatar/5.jpg');
INSERT INTO t_photo VALUES(null,'唯美意境','http://127.0.0.1:3000/img/avatar/4.jpg');
INSERT INTO t_photo VALUES(null,'唯美意境','http://127.0.0.1:3000/img/avatar/3.jpg');
INSERT INTO t_photo VALUES(null,'唯美意境','http://127.0.0.1:3000/img/avatar/2.jpg');


/**商品表**/
CREATE TABLE t_product(
  id INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(128),         #主标题
  price_old DECIMAL(10,2),    #旧价格
  price_new DECIMAL(10,2),    #新价格
  lname VARCHAR(32),          #商品名称
  stock INT,                  #库存
  img_url VARCHAR(255)        #图片路径
);
INSERT INTO t_product VALUES(null,'华为19',9000,90,'华为',1000,'http://127.0.0.1:3000/img/avatar/19.jpeg');
INSERT INTO t_product VALUES(null,'华为191',900,90,'华为',1000,'http://127.0.0.1:3000/img/avatar/20.jpeg');
INSERT INTO t_product VALUES(null,'华为192',1900,90,'华为',1000,'http://127.0.0.1:3000/img/avatar/21.jpeg');
INSERT INTO t_product VALUES(null,'华为193',2900,90,'华为',1000,'http://127.0.0.1:3000/img/avatar/22.jpeg');
INSERT INTO t_product VALUES(null,'华为194',3900,90,'华为',1000,'http://127.0.0.1:3000/img/avatar/23.jpeg');
INSERT INTO t_product VALUES(null,'华为195',4900,90,'华为',1000,'http://127.0.0.1:3000/img/avatar/21.jpeg');
INSERT INTO t_product VALUES(null,'华为196',5900,90,'华为',1000,'http://127.0.0.1:3000/img/avatar/20.jpeg');




