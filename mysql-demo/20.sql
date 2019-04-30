-- 测试子查询
-- 测试由IN引发的子查询

SELECT * FROM emp
WHERE depId IN (SELECT id FROM dep);

SELECT * FROM emp
WHERE depId NOT IN (SELECT id FROM dep);

-- 学员stu
CREATE TABLE stu(
id TINYINT UNSIGNED AUTO_INCREMENT KEY,
username VARCHAR(20) NOT NULL UNIQUE,
score TINYINT UNSIGNED NOT NULL
);
INSERT stu(username,score) VALUES('king',95),
('queen',75),
('zhangsan',69),
('lisi',78),
('wangwu',87),
('zhaoliu',88),
('tianqi',98),
('ceshi',99),
('tiancai',50);


-- 分数级别level
CREATE TABLE level(
id tinyint UNSIGNED AUTO_INCREMENT KEY,
score TINYINT UNSIGNED COMMENT '分数'
);
INSERT level(score) VALUES(90),(80),(70);

-- 查询出成绩优秀的学员

SELECT score FROM level WHERE id=1;

SELECT id,username,score FROM stu
WHERE score>=(SELECT score FROM level WHERE id=1);

-- 查询出没有得到评级的学员

SELECT id,username,score FROM stu
WHERE score<=(SELECT score FROM level WHERE id=3);

-- 由EXISTS 引发的子查询

SELECT * FROM emp WHERE EXISTS (SELECT depName FROM dep WHERE id=10);
SELECT * FROM emp WHERE EXISTS (SELECT depName FROM dep WHERE id=1);


-- 带有ANY SOME ALL关键字的子查询
SELECT * FROM stu
WHERE score>= ANY(SELECT score FROM level);

SELECT * FROM stu
WHERE score>= SOME(SELECT score FROM level);

SELECT * FROM stu
WHERE score>= ALL(SELECT score FROM level);

SELECT * FROM stu
WHERE score< ALL(SELECT score FROM level);

SELECT * FROM stu
WHERE score=ANY(SELECT score FROM level);

SELECT * FROM stu
WHERE score!=ALL(SELECT score FROM level);

-- 创建一个user1表,id username
CREATE TABLE user1(
    id int UNSIGNED AUTO_INCREMENT KEY,
    username VARCHAR(20)
)SELECT id,username FROM emp;

-- 将user表中的用户名写入到user1表中
INSERT user1(username) SELECT username FROM user;

-- 将stu表中的tiancai用户名添加到user2表中
INSERT user2 SET username=(SELECT username FROM stu WHERE id=9);

-- 去掉字段的重复值
SELECT DISTINCT(username) FROM user2;

-- 将user1和user2数据合并到一起
SELECT * FROM user1
UNION
SELECT * FROM user2;
