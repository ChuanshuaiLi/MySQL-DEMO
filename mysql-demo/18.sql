-- 创建管理员表
CREATE TABLE user(
id TINYINT UNSIGNED AUTO_INCREMENT KEY,
username VARCHAR(20) NOT NULL UNIQUE,
email VARCHAR(50) NOT NULL DEFAULT '382771946@qq.com',
proName VARCHAR(10) NOT NULL DEFAULT '北京'
);
INSERT user(username,proName) VALUES('a','北京'),
('b','哈尔滨'),
('c','上海'),
('d','深圳'),
('e','广州'),
('f','重启');

-- 创建省份表
CREATE TABLE provinces(
id TINYINT UNSIGNED AUTO_INCREMENT KEY,
proName VARCHAR(10) NOT NULL UNIQUE
);
INSERT provinces(proName) VALUES('北京'),
('上海'),
('深圳');
--
CREATE TABLE user(
id TINYINT UNSIGNED AUTO_INCREMENT KEY,
username VARCHAR(20) NOT NULL UNIQUE,
email VARCHAR(50) NOT NULL DEFAULT '382771946@qq.com',
proId TINYINT UNSIGNED NOT NULL
);
INSERT user(username,proId) VALUES('a',1);
INSERT user(username,proId) VALUES('b',1);
INSERT user(username,proId) VALUES('c',1);
INSERT user(username,proId) VALUES('d',2);
INSERT user(username,proId) VALUES('e',3);
INSERT user(username,proId) VALUES('f',1);
INSERT user(username,proId) VALUES('g',1);

-- 查询user id ,username provinces proName
SELECT u.id,u.username,p.proName
FROM user AS u
JOIN provinces AS p
ON u.proId=p.id;

-- 创建省份表
CREATE TABLE provinces(
id TINYINT UNSIGNED AUTO_INCREMENT KEY,
proName VARCHAR(10) NOT NULL UNIQUE
);

-- 管理员admin id username email proId
CREATE TABLE admin(
id TINYINT UNSIGNED AUTO_INCREMENT KEY,
username VARCHAR(20) NOT NULL UNIQUE,
email VARCHAR(50) NOT NULL DEFAULT '382771946@qq.com',
proId TINYINT UNSIGNED NOT NULL
);
INSERT admin(username,proId) VALUES('king',1);
INSERT admin(username,proId) VALUES('queen',2);
-- 商品分类cate id cateName cateDesc
CREATE TABLE cate(
id TINYINT UNSIGNED AUTO_INCREMENT KEY,
cateName VARCHAR(50) NOT NULL UNIQUE,
cateDesc VARCHAR(100) NOT NULL DEFAULT ''
);
INSERT cate(cateName) VALUES('母婴');
INSERT cate(cateName) VALUES('服装');
INSERT cate(cateName) VALUES('电子');

-- 商品表products id productName, price,cateId
CREATE TABLE products(
id INT UNSIGNED AUTO_INCREMENT KEY,
productName VARCHAR(50) NOT NULL UNIQUE,
price FLOAT(8,2) NOT NULL DEFAULT 0,
cateId TINYINT UNSIGNED NOT NULL,
adminId TINYINT UNSIGNED NOT NULL
);
INSERT products(productName,price,cateId,adminId)
VALUES('iphone9',9888,3,1),
('adidas',388,2,2),
('nike',888,2,2),
('奶瓶',288,1,1);

-- 查询products id productName price --- cate cateName
SELECT p.id,p.productName,p.price,c.cateName
FROM products AS p
JOIN cate AS c
ON p.cateId=c.id;

-- 查询管理员 id username email -- provinces proName

SELECT a.id,a.username,a.email,p.proName
FROM admin AS a
JOIN provinces AS p
ON a.proId=p.id;
-- 查询 products id productName price
-- cate cateName
-- admin username email

SELECT p.id,p.productName,p.price,c.cateName,a.username,a.email
FROM products AS p
JOIN admin AS a
ON p.adminId=a.id
JOIN cate AS c
ON p.cateId=c.id
WHERE p.price<1000
ORDER BY p.price DESC
LIMIT 0,2;


-- products id productName price
-- cate cateName
-- admin username email
-- provinces proName
