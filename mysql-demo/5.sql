-- 测试浮点型
CREATE TABLE test_float(
a FLOAT(6,2),
b DOUBLE(6,2),
c DECIMAL(6,2)
);

INSERT test_float(a,b,c) VALUES(4.143,4.146,4.149);

CREATE TABLE test_float1(
a FLOAT,
b DOUBLE,
c DECIMAL
);
INSERT test_float1(a,b,c) VALUES(4.143,4.146,4.649);
INSERT test_float(a,b,c) VALUES(1234567.89,2345678.9,567890.89);
