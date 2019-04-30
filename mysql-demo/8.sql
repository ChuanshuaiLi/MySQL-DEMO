-- 测试主键
CREATE TABLE test_primary_key(
    id INT UNSIGNED PRIMARY KEY,
    username VARCHAR(20)
);
INSERT test_primary_key(id,username) VALUES(1,'king');
INSERT test_primary_key(id,username) VALUES(1,'king123');
INSERT test_primary_key(username) VALUES('QUEEN');

CREATE TABLE test_primary_key1(
    id INT UNSIGNED KEY,
    username VARCHAR(20)
);

CREATE TABLE test_primary_key2(
    id INT UNSIGNED,
    username VARCHAR(20),
    PRIMARY KEY(id)
);

-- CREATE TABLE test_primary_key3(
--     id INT UNSIGNED PRIMARY KEY,
--     courseId INT UNSIGNED PRIMARY KEY,
--     username VARCHAR(20),
--     email VARCHAR(50)
-- );

-- 复合主键
CREATE TABLE test_primary_key3(
    id INT UNSIGNED,
    courseId VARCHAR(20),
    username VARCHAR(20),
    email VARCHAR(50),
    PRIMARY KEY(id,courseId)
);
-- 1-a
INSERT test_primary_key3(id,courseId,username,email)
VALUES(1,'a','king','382771946@qq.com');

INSERT test_primary_key3(id,courseId,username,email)
VALUES(1,'b','king','382771946@qq.com');

INSERT test_primary_key3(id,courseId,username,email)
VALUES(2,'a','king','382771946@qq.com');

INSERT test_primary_key3(id,courseId,username,email)
VALUES(1,'a','1king','1382771946@qq.com');

-- 测试AUTO_INCREMENT

CREATE TABLE test_auto_increment(
id INT UNSIGNED KEY AUTO_INCREMENT,
username VARCHAR(20)
);

INSERT test_auto_increment(username) VALUES('A');
INSERT test_auto_increment(username) VALUES('B');
INSERT test_auto_increment(username) VALUES('C');

INSERT test_auto_increment(id,username) VALUES(NULL,'E');
INSERT test_auto_increment(id,username) VALUES(DEFAULT,'F');
INSERT test_auto_increment(id,username) VALUES(15,'G');
