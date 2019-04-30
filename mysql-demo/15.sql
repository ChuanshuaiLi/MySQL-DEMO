-- 测试更新语句
-- 修改第一个用户的信息 id=1
UPDATE user SET age=29 WHERE id=1;

-- 修改id=3的用户，username age email
UPDATE user SET age=47,email='lilys@qq.com',username='lilys' WHERE id=3;

-- 所有用户年龄+10
UPDATE user SET age=age+10;

-- 将id<=5的用户年龄改为-20，将邮箱改为默认值
UPDATE user SET age=age-20,email=DEFAULT WHERE id<=5;

-- 测试删除语句
-- 删除用户名为king
DELETE FROM user WHERE username='king';

-- 删除年龄为24的用户
DELETE FROM user WHERE age=24;

-- 删除表中所有记录
DELETE FROM user;

INSERT user VALUES(NULL,'queen',25,'queen@qq.com');
INSERT user VALUES(DEFAULT,'lily',26,'lily@qq.com');
