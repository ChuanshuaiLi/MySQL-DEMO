# 注释内容
-- 注释内容
-- 创建数据库 king
CREATE DATABASE king;
-- 查看当前服务器下有哪些数据库
SHOW DATABASES;
SHOW SCHEMAS;
-- 查看king数据库的详细信息
SHOW CREATE DATABASE king;

-- 创建数据库queen 并且指定编码方式为gbk
CREATE DATABASE IF NOT EXISTS queen DEFAULT CHARACTER SET 'GBK';
-- 查看当前服务器下全部的数据库
SHOW DATABASES;
-- 查看queen指定数据库的详细信息
SHOW CREATE DATABASE queen;
-- 将queen的数据库的编码方式改为utf8
ALTER DATABASE queen DEFAULT CHARACTER SET 'UTF8';
-- 打开queen的数据库
USE queen;
-- 得到当前打开的数据库
SELECT DATABASE();
SELECT SCHEMA();
-- 删除king数据库
DROP DATABASE IF EXISTS king;
DROP DATABASE IF EXISTS queen;
