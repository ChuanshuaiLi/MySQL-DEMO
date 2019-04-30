-- HH:MM:SS [D HH:MM:SS] D表示天数 0~34
-- 测试TIME类型
CREATE TABLE test_time(
a TIME
);
INSERT test_time(a) VALUES('12:23:45');
INSERT test_time(a) VALUES('2 12:23:45');
INSERT test_time(a) VALUES('22:22');
INSERT test_time(a) VALUES('22');
INSERT test_time(a) VALUES('2 22');
-- HHMMSS
INSERT test_time(a) VALUES('121212');
INSERT test_time(a) VALUES('0');
INSERT test_time(a) VALUES(0);
INSERT test_time(a) VALUES('787878');

INSERT test_time(a) VALUES(NOW());
INSERT test_time(a) VALUES(CURRENT_TIME);

-- 测试DATE类型 YYYY-MM-DD YYYYMMDD
CREATE TABLE test_date(
    a DATE
);
INSERT test_date(a) VALUES('2017-03-04');
INSERT test_date(a) VALUES('2017-2-13');
INSERT test_date(a) VALUES('4007-03-23');
INSERT test_date(a) VALUES('40071212');
INSERT test_date(a) VALUES('4007@12@12');
INSERT test_date(a) VALUES('4008#13#13');
INSERT test_date(a) VALUES('4009.8.14');


-- YY-MM-DD YYMMDD
-- 70~99 转换成1970~1999 00~69 2000~2069
INSERT test_date(a) VALUES('780902');
INSERT test_date(a) VALUES('650902');
INSERT test_date(a) VALUES('880902');
INSERT test_date(a) VALUES(NOW());
INSERT test_date(a) VALUES(CURRENT_DATE);

-- 测试DATETIME

CREATE TABLE test_datetime(
a DATETIME
);
INSERT test_datetime(a) VALUES('1004-09-12 13:24:56');
INSERT test_datetime(a) VALUES('720305121212');
INSERT test_datetime(a) VALUES(NOW());
INSERT test_datetime(a) VALUES(DATETIME);

-- 测试TIMESTAMP
CREATE TABLE test_timestamp(
    a TIMESTAMP
);
INSERT test_timestamp(a) VALUES('1978-10-23 12:12:12');

-- 插入CURRENT_TIMESTAMP
INSERT test_timestamp VALUES(CURRENT_TIMESTAMP);

-- 插入NULL
INSERT test_timestamp VALUES(NULL);

-- 什么也不写 得到当前系统日期和时间
INSERT test_timestamp VALUES();


-- 测试YEAR

CREATE TABLE test_year(
    a YEAR
);

INSERT test_year(a) VALUES(1901);

-- 00~69 2000~2069 70~99 1970~1999
-- 0 插入的结果是0000
-- '0' 插入的结果是2000
