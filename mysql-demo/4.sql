-- 测试整型
CREATE TABLE test_int(
    a tinyint,
    b smallint,
    c mediumint,
    d int,
    e bigint
);
INSERT test_int(a) VALUES(-128);
-- 如果超出数据的范围，会产生截断现象
INSERT test_int(a) VALUES(-129);
INSERT test_int(a) VALUES(1270);

-- 测试无符号

CREATE TABLE test_unsigned(
a tinyint,
b tinyint UNSIGNED
);

INSERT test_unsigned(a,b) VALUES(-12,-12);
INSERT test_unsigned(a,b) VALUES(0,0);
INSERT test_unsigned(a,b) VALUES(0,256);

-- 测试零填充 ZEROFILL
CREATE TABLE test_int1(
    a tinyint ZEROFILL,
    b smallint ZEROFILL,
    c mediumint ZEROFILL,
    d int ZEROFILL,
    e bigint ZEROFILL
);

INSERT test_int1(a,b,c,d,e) VALUES(1,1,1,1,1);

CREATE TABLE test_int2(
    a tinyint(2),
    b smallint(2)
);
INSERT test_int2(a,b) VALUES(123,45678);
