-- 测试添加记录
CREATE DATABASE IF NOT EXISTS king DEFAULT CHARACTER SET 'UTF8';
USE king;
CREATE TABLE IF NOT EXISTS user(
    id INT UNSIGNED AUTO_INCREMENT KEY COMMENT '编号',
    username VARCHAR(20) NOT NULL UNIQUE COMMENT '用户名',
    age TINYINT UNSIGNED DEFAULT 18 COMMENT '年龄',
    email VARCHAR(50) NOT NULL DEFAULT 'imooc@qq.com' COMMENT '邮箱'
)ENGINE=INNODB CHARSET=UTF8;

-- 不指定字段名称
INSERT user VALUE(1,'king',24,'382771946@qq.com');
INSERT user VALUES(NULL,'queen',25,'queen@qq.com');
INSERT user VALUES(DEFAULT,'lily',26,'lily@qq.com');

-- 列出指定字段的形式
INSERT user(username,email) VALUES('rose','rose@qq.com');
INSERT user(age,email,id,username) VALUES(34,'imooc@qq.com',5,'imooc');

-- 一次插入3条记录
INSERT user VALUES(NULL,'a',DEFAULT,DEFAULT),
(NULL,'b',56,'b@qq.com'),
(NULL,'c',14,'c@qq.com');

-- INSERT ...SET 的形式
INSERT user SET username='d',age=45,email='d@qq.com';

-- INSERT SELECT
INSERT user(username) SELECT a FROM test;
