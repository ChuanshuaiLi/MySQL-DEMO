-- 测试添加和删除字段
CREATE TABLE IF NOT EXISTS user1(
    id INT UNSIGNED AUTO_INCREMENT KEY
);

-- 添加用户名字段 username VARCHAR(20)
ALTER TABLE user1
ADD username VARCHAR(20);

-- 添加密码字段 password CHAR(32) NOT NULL
ALTER TABLE user1
ADD password CHAR(32) NOT NULL;

-- 添加邮箱字段 email VARCHAR(50) NOT NULL UNIQUE 加到username之后
ALTER TABLE user1
ADD email VARCHAR(50) NOT NULL UNIQUE AFTER username;

-- 添加测试字段 test TINYINT(1) NOT NULL DEFAULT 0; 加到首位
ALTER TABLE user1
ADD test TINYINT(1) NOT NULL DEFAULT 0 FIRST;

-- 删除test字段
ALTER TABLE user1
DROP test;


-- 添加age、addr字段，删除email字段
ALTER TABLE user1
ADD age TINYINT UNSIGNED NOT NULL DEFAULT 18,
ADD addr VARCHAR(100) NOT NULL DEFAULT '北京',
DROP email;

-- 创建数据表 id / proName
-- 添加price FLOAT(8,2) UNSIGNED NOT NULL DEFAULT 0
-- 添加num INT UNSIGNED NOT NULL DEFAULT 100
-- 添加测试字段test VARCHAR(50) NOT NULL 加到首位
-- 添加测试字段test1 CHAR(23) NOT NULL 添加到price之后
-- 删除test字段

-- 选中一次数据表完成多次操作，添加一个desc TEXT, 添加isSale 布尔类型 0下架 1代表在卖
-- 删除test1字段

-- 测试添加删除默认值操作
CREATE TABLE user2(
id INT UNSIGNED AUTO_INCREMENT KEY,
username VARCHAR(20) NOT NULL,
age TINYINT UNSIGNED NOT NULL DEFAULT 18,
email VARCHAR(50) NOT NULL
);
-- 给email字段添加默认值 imooc@qq.com
ALTER TABLE user2
ALTER email SET DEFAULT 'imooc@qq.com';

-- 删除age字段的默认值
ALTER TABLE user2
ALTER age DROP DEFAULT;

-- 添加地址字段
-- 给地址字段添加默认值为北京
-- 删除商品数量的默认值


-- 测试修改字段类型和字段属性、字段名称
CREATE TABLE user3(
id INT UNSIGNED AUTO_INCREMENT KEY,
username VARCHAR(5) NOT NULL UNIQUE,
password CHAR(32) NOT NULL,
email VARCHAR(10) NOT NULL
);

-- 将用户名字段的类型改为20
ALTER TABLE user3
MODIFY username VARCHAR(20) NOT NULL;

-- 将密码的长度改为40
ALTER TABLE user3
MODIFY password CHAR(40) NOT NULL;

-- 将email字段改为VARCHAR(50) NOT NULL FIRST

ALTER TABLE user3
MODIFY email VARCHAR(50) NOT NULL FIRST;

-- 将username 名称改为user
ALTER TABLE user3
CHANGE username user VARCHAR(20) NOT NULL;

-- 将password 名称改为pwd
ALTER TABLE user3
CHANGE password pwd CHAR(40) NOT NULL;

-- 将email改成userEmail 类型改成VARCHAR(100) DEFAULT 'imooc@qq.com'

ALTER TABLE user3
CHANGE email userEmail VARCHAR(100) DEFAULT 'imooc@qq.com';


-- 测试添加和删除主键
CREATE TABLE user4(
id INT UNSIGNED,
username VARCHAR(20) NOT NULL
);

-- 添加主键
ALTER TABLE user4
ADD PRIMARY KEY(id);

-- 删除主键
ALTER TABLE user4
DROP PRIMARY KEY;

CREATE TABLE user5(
id INT UNSIGNED AUTO_INCREMENT KEY,
username VARCHAR(20) NOT NULL
);

-- 将id的AUTO_INCREMENT去掉
ALTER TABLE user5
MODIFY id INT UNSIGNED;

-- 测试添加和删除唯一
CREATE TABLE user6(
id INT UNSIGNED AUTO_INCREMENT KEY,
username VARCHAR(20) NOT NULL UNIQUE,
password CHAR(32) NOT NULL,
email VARCHAR(50) NOT NULL UNIQUE
);

-- 删除唯一索引 username 和email
ALTER TABLE user6
DROP INDEX username;


ALTER TABLE user6
DROP INDEX email;

-- 添加唯一索引
ALTER TABLE user6
ADD UNIQUE KEY(username);

ALTER TABLE user6
ADD UNIQUE INDEX uni_email(email);

-- 将user6改为user666
ALTER TABLE user6
RENAME TO user666;


ALTER TABLE user666
RENAME AS user6;

ALTER TABLE user6
RENAME user666;

RENAME TABLE user666 TO user6;
