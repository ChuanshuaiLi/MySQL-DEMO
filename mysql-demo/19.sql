-- 测试外键
-- 新闻分类表 news_cate
CREATE TABLE news_cate(
id TINYINT UNSIGNED AUTO_INCREMENT KEY,
cateName VARCHAR(50) NOT NULL UNIQUE,
cateDesc VARCHAR(100) NOT NULL DEFAULT ''
);

-- 新闻表 news
CREATE TABLE news(
id INT UNSIGNED AUTO_INCREMENT KEY,
title VARCHAR(100) NOT NULL UNIQUE,
content VARCHAR(1000) NOT NULL,
cateId TINYINT UNSIGNED NOT NULL
);

INSERT news_cate(cateName) VALUES('国内新闻'),
('国际新闻'),
('娱乐新闻'),
('体育新闻');

INSERT news(title,content,cateId) VALUES('a1','aaaa1',1),
('a2','aaaa2',1),
('a3','aaaa3',4),
('a4','aaaa4',2),
('a5','aaaa5',3);

-- 查询news id title content
-- news_cate cateName
SELECT n.id,n.title,n.content,c.cateName
FROM news AS n
JOIN news_cate AS c
ON n.cateId=c.id;

INSERT news(title,content,cateId) VALUES('a6','aaaa6',45);

-- 添加外键

-- 新闻分类表 news_cate
CREATE TABLE news_cate(
id TINYINT UNSIGNED AUTO_INCREMENT KEY,
cateName VARCHAR(50) NOT NULL UNIQUE,
cateDesc VARCHAR(100) NOT NULL DEFAULT ''
)ENGINE=INNODB;

-- 新闻表 news
CREATE TABLE news(
id INT UNSIGNED AUTO_INCREMENT KEY,
title VARCHAR(100) NOT NULL UNIQUE,
content VARCHAR(1000) NOT NULL,
cateId TINYINT UNSIGNED NOT NULL,
FOREIGN KEY(cateId) REFERENCES news_cate(id)
)ENGINE=INNODB;

INSERT news_cate(cateName) VALUES('国内新闻'),
('国际新闻'),
('娱乐新闻'),
('体育新闻');

INSERT news(title,content,cateId) VALUES('a1','aaaa1',1),
('a2','aaaa2',1),
('a3','aaaa3',4),
('a4','aaaa4',2),
('a5','aaaa5',3);

-- 测试非法记录
INSERT news(title,content,cateId) VALUES('b1','bbbb1',8);

-- 测试删除父表中的记录 和删除父表
DELETE FROM news_cate WHERE id=1;

UPDATE news_cate SET id=10 WHERE id=1;

INSERT news_cate(cateName) VALUES('教育新闻');

-- 将教育新闻 改成教育
UPDATE news_cate SET cateName='教育' WHERE id=5;
UPDATE news_cate SET id=50 WHERE cateName='教育';

-- 添加外键名称

-- 新闻分类表 news_cate
CREATE TABLE news_cate(
id TINYINT UNSIGNED AUTO_INCREMENT KEY,
cateName VARCHAR(50) NOT NULL UNIQUE,
cateDesc VARCHAR(100) NOT NULL DEFAULT ''
)ENGINE=INNODB;

-- 新闻表 news
CREATE TABLE news(
id INT UNSIGNED AUTO_INCREMENT KEY,
title VARCHAR(100) NOT NULL UNIQUE,
content VARCHAR(1000) NOT NULL,
cateId TINYINT UNSIGNED NOT NULL,
CONSTRAINT cateId_fk_newsCate FOREIGN KEY(cateId) REFERENCES news_cate(id)
)ENGINE=INNODB;

-- 删除外键
ALTER TABLE news
DROP FOREIGN KEY cateId_fk_newsCate;

-- 添加外键
ALTER TABLE news
ADD FOREIGN KEY(cateId) REFERENCES news_cate(id);

-- 删除外键
ALTER TABLE news
DROP FOREIGN KEY news_ibfk_1;

ALTER TABLE news
ADD CONSTRAINT cateId_fk_newsCate FOREIGN KEY(cateId) REFERENCES news_cate(id);

INSERT news_cate(cateName) VALUES('国内新闻'),
('国际新闻'),
('娱乐新闻'),
('体育新闻');

INSERT news(title,content,cateId) VALUES('a1','aaaa1',1),
('a2','aaaa2',1),
('a3','aaaa3',4),
('a4','aaaa4',2),
('a5','aaaa5',8);

ALTER TABLE news
ADD FOREIGN KEY(cateId) REFERENCES news_cate(id);

-- 指定级联操作 DELETE CASCADE UPDATE CASCADE
ALTER TABLE news
ADD FOREIGN KEY(cateId) REFERENCES news_cate(id)
ON DELETE CASCADE ON UPDATE CASCADE;
