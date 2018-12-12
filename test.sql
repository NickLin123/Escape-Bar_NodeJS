SELECT p.`PRO_NAME`, p.`PRICE`, p.`PEOPLE_MIN`, p.`PEOPLE_MAX`, p_img.`IMG_NAME` FROM `products` p JOIN `product_images` p_img ON p.`PRO_SEQ`=p_img.`PRO_SEQ` WHERE p_img.`STATUS`='M' AND P_ID=

SELECT p.`PRO_NAME`, f.`feature` "F1", c.`CATE_NAME` FROM `products` p JOIN `gamefeature` f JOIN `game_cate` c ON p.`PRO_SEQ`=f.`gid` AND f.`feature`=c.`sid` WHERE p.P_ID=3 GROUP BY p.`PRO_NAME`


SELECT p.`PRO_NAME`, p.`PRICE`, p.`PEOPLE_MIN`, p.`PEOPLE_MAX`, p_img.`IMG_NAME`, f1.`feature` "F1", c1.`CATE_NAME` "FF1", f2.`feature` "F2", c2.`CATE_NAME` "FF2", f3.`feature` "F3", c3.`CATE_NAME` "FF3" FROM `products` p 
LEFT JOIN `product_images` p_img ON p.`PRO_SEQ`=p_img.`PRO_SEQ` 
LEFT JOIN `gamefeature` f1 ON p.`PRO_SEQ` = f1.`gid` 
LEFT JOIN `game_cate` c1 ON f1.`feature` = c1.`sid` 
LEFT JOIN `gamefeature` f2 ON p.`PRO_SEQ` = f2.`gid` && f2.`feature` != f1.`feature` 
LEFT JOIN `game_cate` c2 ON f2.`feature` = c2.`sid` 
LEFT JOIN `gamefeature` f3 ON p.`PRO_SEQ` = f2.`gid` && f3.`feature` != f1.`feature` && f3.`feature` != f2.`feature` 
LEFT JOIN `game_cate` c3 ON f3.`feature` = c3.`sid` 
WHERE p_img.`STATUS`='M' AND p.`P_ID`=21 
GROUP BY p.`PRO_NAME`


WHERE p_img.`STATUS`='M' AND p.`PRO_SEQ`=3 LIMIT 1


SELECT p.`PRO_NAME`, p.`PRICE`, p.`PEOPLE_MIN`, p.`PEOPLE_MAX`, p_img.`IMG_NAME`, f1.`feature` "F1", c1.`CATE_NAME` "FEATURE1", f2.`feature` "F2", c2.`CATE_NAME` "FEATURE2", f3.`feature` "F3", c3.`CATE_NAME` "FEATURE3" FROM `products` p LEFT JOIN `product_images` p_img ON p.`PRO_SEQ`=p_img.`PRO_SEQ` LEFT JOIN `gamefeature` f1 ON p.`PRO_SEQ` = f1.`gid` LEFT JOIN `game_cate` c1 ON f1.`feature` = c1.`sid` LEFT JOIN `gamefeature` f2 ON p.`PRO_SEQ` = f2.`gid` && f2.`feature` != f1.`feature` LEFT JOIN `game_cate` c2 ON f2.`feature` = c2.`sid` LEFT JOIN `gamefeature` f3 ON p.`PRO_SEQ` = f2.`gid` && f3.`feature` != f1.`feature` && f3.`feature` != f2.`feature` LEFT JOIN `game_cate` c3 ON f3.`feature` = c3.`sid` WHERE p_img.`STATUS`='M' AND p.`P_ID`=21 GROUP BY p.`PRO_NAME`
