var express = require('express');
var router = express.Router();
var mysql = require("mysql");

// const connection = mysql.createConnection({
//     host: 'localhost',
//     user: 'mick',
//     password: '5678',
//     database: 'escapebar_proj'
// })

const connection = mysql.createConnection({
    host: 'localhost',
    port: 8889,
    user: 'root',
    password: 'root',
    database: 'escape_bar'
  });

connection.connect(err =>{
    if(err) { return err;}
});

console.log(connection);


// 預設查詢全臺灣場館
router.route('/city/')
    .get((req, res, next)=>{
        connection.query("SELECT * FROM markers", (err, results)=>{ 
            if(err){
                return res.send(err)
            } else {
                return res.json({
                    data:results
                })
            }
        });
    });

// 以縣市篩選查詢場館
router.route('/city/:id')
    .get((req, res, next) => {
        connection.query("SELECT * FROM markers WHERE city_id=?", req.params.id, (err, results)=>{
            if(err){return res.send(err)};
            return res.json({
                data:results
            })
        });
    });

// 以關鍵字查詢場館名稱欄位
router.route('/name/:keyword')
    .get((req, res, next) => {
        connection.query("SELECT * FROM markers WHERE s_name LIKE ?", '%'+req.params.keyword+'%', (err, results)=>{
            if(err){
                return res.send(err)
            } else {
                return res.json({
                    data:results
                })
            }
        });
    });


// 查詢某個場館下的遊戲，欄位包含遊戲ID、遊戲名稱、價格、最低人數、最高人數、圖片檔名、評價數量、星數、特色x3

$storeInfoQuery = "SELECT p.`PRO_NAME`, p.`PRICE`, p.`PEOPLE_MIN`, p.`PEOPLE_MAX`, p_img.`IMG_NAME`, r.`comments`, r.`rating` ,f1.`feature` F1, c1.`CATE_NAME` FF1, f2.`feature` F2, c2.`CATE_NAME` FF2, f3.`feature` F3, c3.`CATE_NAME` FF3 FROM `products` p LEFT JOIN `product_images` p_img ON p.`PRO_SEQ`=p_img.`PRO_SEQ` LEFT JOIN `totalcomment` r ON p.`PRO_SEQ` = r.`id` LEFT JOIN `gamefeature` f1 ON p.`PRO_SEQ` = f1.`gid` LEFT JOIN `game_cate` c1 ON f1.`feature` = c1.`sid` LEFT JOIN `gamefeature` f2 ON p.`PRO_SEQ` = f2.`gid` && f2.`feature` != f1.`feature` LEFT JOIN `game_cate` c2 ON f2.`feature` = c2.`sid` LEFT JOIN `gamefeature` f3 ON p.`PRO_SEQ` = f2.`gid` && f3.`feature` != f1.`feature` && f3.`feature` != f2.`feature` LEFT JOIN `game_cate` c3 ON f3.`feature` = c3.`sid` WHERE p_img.`STATUS`='M' AND p.`P_ID`=? GROUP BY p.`PRO_NAME`";

router.route('/store/:sid')
    .get((req, res, next) => {
        connection.query($storeInfoQuery, req.params.sid, (err, results)=>{
            if(err){return res.send(err)};
            return res.json({
                data:results
            })
        });
    });

module.exports = router;