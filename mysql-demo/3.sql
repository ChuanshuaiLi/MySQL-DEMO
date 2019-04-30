-- 用户表 imooc_user

CREATE TABLE IF NOT EXISTS imooc_user(
id INT,
username VARCHAR(20),
password CHAR(32),
email VARCHAR(50),
age TINYINT,
card CHAR(18),
tel CHAR(11),
salary FLOAT(8,2),
married TINYINT(1),
addr VARCHAR(100),
sex ENUM('男','女','保密')
)ENGINE=INNODB CHARSET=UTF8;

-- INSERT [INTO] tbl_name(id,username,...) VALUES(1,'KING',...);

-- 向imooc_user表插入一条记录
INSERT imooc_user(id,username,password,email,age,card,tel,salary,married,addr,sex)
VALUES(1,'king','king','382771946@qq.com',24,'230112197809871234','18635579617',88888.68,0,'北京','男');

-- 查询表中所有记录 SELECT * FROM tbl_name;

SELECT * FROM imooc_user;

INSERT imooc_user(id,username,password,email,age,card,tel,salary,married,addr,sex)

VALUES(-5,'king','123456','382771946@qq.com',190,'230112197809871234','18635579617',2345.68,1,'北京','女');
