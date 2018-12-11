var express = require("express");
var router = express.Router();
var mysql = require("mysql");

var connection = mysql.createConnection({
  // host: "192.168.24.140",
  host: "localhost",
  // database: "escapebar_proj",
  database: "escapebar",
  // user: "keith77377",
  user: "root",
  password: ""
});
connection.connect();
var selectProductsStr = "SELECT p.`PRO_SEQ`, p.`PRO_NAME`, p.`CID`, p.`PEOPLE_MIN`, p.`PEOPLE_MAX`, p.`GAME_TIME`, p.`PRICE`, p.`P_ID`, p.`PRO_INFO`, p.`HOT_INDEX`, p.`PAGE_VIEWS`, " +
                        "c.`city_id`, c.`city_name`, m.`sid`, m.`s_name`, m.`site_name`, m.`s_tel`, m.`city_id`, m.`s_add`, m.`s_ophr`, m.`lat`, m.`lng`, m.`s_logo`, " +
                        " com.`cid`, com.`c_name`, com.`c_intro`, com.`c_website`, com.`c_facebook`, com.`c_logo`, img.`PRO_SEQ`, img.`IMG_NAME`, img.`STATUS`, " +
                        "f.`gid`, f.`feature1`, f.`feature2`, f.`feature3`, g1.`CATE_NAME` f1, g2.`CATE_NAME` f2, g3.`CATE_NAME` f3, tc.`comments`, tc.`rating` " +
                        "FROM `products` p JOIN `markers` m  ON p.`P_ID` = m.`sid` " +
                        "JOIN `city` c ON c.`city_id` = m.`city_id` " + 
                        "JOIN `company` com ON com.`cid` = p.`CID` " + 
                        "JOIN `product_images` img ON p.`PRO_SEQ` = img.`PRO_SEQ` && img.`STATUS` ='M' " +
                        "JOIN `game_feature` f ON p.`PRO_SEQ` = f.`gid` " +
                        "JOIN `game_cate` g1 ON g1.`SID` = f.`feature1` " +
                        "JOIN `game_cate` g2 ON g2.`SID` = f.`feature2` " +
                        "JOIN `game_cate` g3 ON g3.`SID` = f.`feature3` " +
                        "JOIN `totalcomment` tc ON tc.`id` = p.`PRO_SEQ` " 
router
  .route("/pro_list/:data")
  .get(function(req, res) {
    connection.query(
      selectProductsStr + "WHERE m.`city_id` "
      + JSON.parse(req.params.data).city + JSON.parse(req.params.data).price 
      + JSON.parse(req.params.data).people +" && p.`PRO_NAME` LIKE '%" + JSON.parse(req.params.data).text + "%' "
      + JSON.parse(req.params.data).cate + " " + JSON.parse(req.params.data).sort
      , function(error, results) {
        if (error) throw error;
        res.json(results)
      // res.send(JSON.parse(req.params.data).price)
      });
  })
// get SearchBar
router
  .route("/pro_list/search/:text")
  .get(function(req,res){
    connection.query(
      "SELECT p.`PRO_NAME` FROM `products` p JOIN  `markers` m  ON p.`P_ID` = m.`sid` JOIN `city` c ON c.`city_id` = m.`city_id` WHERE p.`PRO_NAME` LIKE '%" + req.params.text + "%'"
      , function(error, results) {
        if (error) throw error;
        res.json(results)
      })
  });
// get filter
router
  .route("/pro_list/filter/:str")
  .get(function(req,res){
    console.log(req.params.str)
    connection.query(
      selectProductsStr + "WHERE p.`PRO_SEQ` >=1 " + req.params.str 
      , function(error, results) {
        if (error) throw error;
        res.json(results)
      })
  })
// get product_images
router
  .route('/pro_list/products/:id')
  .get(function(req,res){
    connection.query(
      "SELECT * FROM `product_images` WHERE `PRO_SEQ` =?" 
      , req.params.id, function(error, results) {
        if(error) throw error;
        res.json(results)
      })
  })
// get product_stocks
router
  .route('/pro_list/products/stock/:pid')
  .get(function(req,res){
    connection.query(
      "SELECT * FROM `product_stock` WHERE `PRO_SEQ` =?"
      , req.params.pid, function(error, results) {
        if(error) throw error;
        res.json(results)
      }
    )
  })
// get 不同場館
router
  .route('/pro_list/products/site_name/:str')
  .get(function(req,res){
    connection.query(
      "SELECT p.`PRO_SEQ`, m.`site_name` FROM `products` p JOIN `markers` m ON p.`P_ID` = m.`sid` WHERE " + req.params.str
      , function(error, results) {
        if(error) throw error;
        res.json(results)
      }
    )
  })
//get 換場館
router
  .route('/pro_list/site/:id')
  .get(function(req,res){
    connection.query(
      selectProductsStr + " WHERE p.`PRO_SEQ` = " + req.params.id
      , function(error, results) {
        if(error) throw error;
        res.json(results)
      }
    )
  })
//首頁關鍵字搜尋
router
  .route('/home/search/:text')
  .get(function(req,res){
    connection.query(
      "SELECT p.`PRO_NAME`, com.`c_name` FROM `products` p JOIN `company` com ON com.`cid` = p.`CID` JOIN  `markers` m  ON p.`P_ID` = m.`sid` JOIN `city` c ON c.`city_id` = m.`city_id` WHERE p.`PRO_NAME` LIKE '%" + req.params.text + "%' || com.`c_name` LIKE '%" + req.params.text + "%'"
      , function(error, results) {
        if (error) throw error;
        res.json(results)
      })
  });
router
  .route("/pro_list/homeSearch/:str")
  .get(function(req,res){
    // console.log(req.params.str[])
    connection.query(
      selectProductsStr + "WHERE p.`PRO_SEQ` >=1 " + " && (p.`PRO_NAME` LIKE '%" + JSON.parse(req.params.str).text + 
      "%' || com.`c_name` LIKE '%" + JSON.parse(req.params.str).text + "%') " + JSON.parse(req.params.str).str
      , function(error, results) {
        if (error) throw error;
        res.json(results)
      })
  })
module.exports = router;