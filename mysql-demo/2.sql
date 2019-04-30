-- 创建慕课网 imooc
CREATE DATABASE IF NOT EXISTS imooc DEFAULT CHARACTER SET 'UTF8';

-- 打开imooc

USE imooc;

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

-- 查看imooc_user表的表结构
DESC imooc_user;

DESCRIBE imooc_user;

SHOW COLUMNS FROM imooc_user;

-- 删除imooc_user表

DROP TABLE IF EXISTS imooc_user;

-- 查看当前数据库下的数据表

-- 查看imooc_user表的详细信息

-- 通过三种方式查看指定数据表的表结构

-- 最后删除imooc_user数据表
