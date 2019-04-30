CREATE DATABASE IF NOT EXISTS test2 DEFAULT CHARACTER SET 'UTF8';
USE test2;
CREATE TABLE emp(
id INT UNSIGNED AUTO_INCREMENT KEY,
username VARCHAR(20) NOT NULL UNIQUE COMMENT '编号',
age TINYINT UNSIGNED NOT NULL DEFAULT 18  COMMENT '年龄',
sex ENUM('男','女','保密') NOT NULL DEFAULT '保密' COMMENT '性别',
addr VARCHAR(20) NOT NULL DEFAULT '北京',
depId TINYINT UNSIGNED NOT NULL COMMENT '部门对应的编号'
)ENGINE=INNODB CHARSET=UTF8;

INSERT emp(username,age,depId) VALUES('king',24,1),
('queen',25,2),
('imooc',26,1),
('lily',27,1),
('rose',28,3),
('john',29,3);

INSERT emp(username,age,depId)  VALUES('测试用户',39,6);

CREATE TABLE dep(
id TINYINT UNSIGNED AUTO_INCREMENT KEY,
depName VARCHAR(50) NOT NULL UNIQUE,
depDesc VARCHAR(100) NOT NULL DEFAULT ''
)ENGINE=INNODB CHARSET=UTF8;
INSERT dep(depName,depDesc) VALUES('PHP教学部','研发PHP课件'),
('JAVA教学部','研发JAVA课件'),
('WEB前端教学部','研发WEB前端课件'),
('IOS教学部','研发IOS课件');


-- 查询 emp id username age  部门名称 dep depName

SELECT emp.id,emp.username,emp.age,dep.depName FROM emp,dep;

SELECT e.id,e.username,e.age,d.depName
FROM emp AS e
INNER JOIN dep AS d
ON e.depId=d.id;

-- 查询emp id username age addr dep id depName depDesc
SELECT e.id,e.username,e.age,e.addr,
d.id,d.depName,d.depDesc
FROM dep AS d
JOIN emp AS e
ON d.id=e.depId;

-- 测试左外连接
SELECT e.id,e.username,e.age,d.depName,d.depDesc
FROM emp AS e
LEFT OUTER JOIN dep AS d
ON e.depId=d.id;

-- 测试右外连接
SELECT e.id,e.username,e.age,d.depName,d.depDesc
FROM emp AS e
RIGHT JOIN dep AS d
ON e.depId=d.id;
