-- 测试自身连接
CREATE TABLE cate(
    id SMALLINT UNSIGNED AUTO_INCREMENT KEY,
    cateName VARCHAR(100) NOT NULL UNIQUE,
    pId SMALLINT UNSIGNED NOT NULL DEFAULT 0
);
INSERT cate(cateName,pId) VALUES('服装',0);
INSERT cate(cateName,pId) VALUES('数码',0);
INSERT cate(cateName,pId) VALUES('箱包',0);

INSERT cate(cateName,pId) VALUES('男装',1);
INSERT cate(cateName,pId) VALUES('女装',1);
INSERT cate(cateName,pId) VALUES('内衣',1);

INSERT cate(cateName,pId) VALUES('电视',2);
INSERT cate(cateName,pId) VALUES('冰箱',2);
INSERT cate(cateName,pId) VALUES('洗衣机',2);

INSERT cate(cateName,pId) VALUES('爱马仕',3);
INSERT cate(cateName,pId) VALUES('LV',3);
INSERT cate(cateName,pId) VALUES('GUCCI',3);

INSERT cate(cateName,pId) VALUES('夹克',4);
INSERT cate(cateName,pId) VALUES('衬衫',4);
INSERT cate(cateName,pId) VALUES('裤子',4);

INSERT cate(cateName,pId) VALUES('液晶电视',10);
INSERT cate(cateName,pId) VALUES('等离子电视',10);
INSERT cate(cateName,pId) VALUES('背投电视',10);

-- 查询所有的分类信息，并且得到其父分类
SELECT s.id,s.cateName AS sCateName,p.cateName  AS pCateName
FROM cate AS s
LEFT JOIN cate AS p
ON s.pId=p.id;

-- 查询所有的分类及其子分类
SELECT p.id,p.cateName  AS pCateName,s.cateName AS sCateName
FROM cate AS s
RIGHT JOIN cate AS p
ON s.pId=p.id;

-- 查询所有的分类并且得到子分类的数目
SELECT p.id,p.cateName  AS pCateName,COUNT(s.cateName) AS count
FROM cate AS s
RIGHT JOIN cate AS p
ON s.pId=p.id
GROUP BY p.cateName
ORDER BY id ASC;


sCate 表
id | cateName        | pId |
+----+-----------------+-----+
|  1 | 服装            |   0 |
|  2 | 数码            |   0 |
|  3 | 玩具            |   0 |
|  4 | 男装            |   1 |
|  5 | 女装            |   1 |
|  6 | 内衣            |   1 |
| 10 | 电视            |   2 |
| 11 | 冰箱            |   2 |
| 12 | 洗衣机          |   2 |
| 13 | 爱马仕          |   3 |
| 14 | LV              |   3 |
| 15 | GUCCI           |   3 |
| 16 | 夹克            |   4 |
| 17 | 衬衫            |   4 |
| 18 | 裤子            |   4 |
| 19 | 液晶电视        |  10 |
| 20 | 等离子电视      |  10 |
| 21 | 背投电视        |  10

pCate
id | cateName        | pId |
+----+-----------------+-----+
|  1 | 服装            |   0 |
|  2 | 数码            |   0 |
|  3 | 玩具            |   0 |
|  4 | 男装            |   1 |
|  5 | 女装            |   1 |
|  6 | 内衣            |   1 |
| 10 | 电视            |   2 |
| 11 | 冰箱            |   2 |
| 12 | 洗衣机          |   2 |
| 13 | 爱马仕          |   3 |
| 14 | LV              |   3 |
| 15 | GUCCI           |   3 |
| 16 | 夹克            |   4 |
| 17 | 衬衫            |   4 |
| 18 | 裤子            |   4 |
| 19 | 液晶电视        |  10 |
| 20 | 等离子电视      |  10 |
| 21 | 背投电视        |  10
