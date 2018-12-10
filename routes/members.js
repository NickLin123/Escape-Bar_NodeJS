var express = require("express");
var router = express.Router();
var mysql = require("mysql");

//建立連線
var connection = mysql.createConnection({
  host: 'localhost',
  // host: "192.168.24.140",
  user: 'mick',
  password: '5678',
  database: 'escapebar_proj'
});
connection.connect();

// http://localhost:3000/api/members
router
  .route("/members")
  .get(function(req, res) {
    //GET http://localhost:3000/xxx/members
    //  res.send("get all product");
    connection.query("select * from members", function(error, results) {
      if (error) throw error;
      res.json(results);
    });
  })
  .post(function(req, res) {
    //POST http://localhost:3000/xxx/members
    //讀取瀏覽器傳送過來的資料  req.body
    //res.send("新增資料");
    connection.query("insert into members set ?", req.body, function(error) {
      if (error) throw error;
      res.json({ message: "新增成功" });
    });
  });
// http://localhost:3000/api/members/1
router
  .route("/members/:id")
  .get(function(req, res) {
    //GET http://localhost:3000/xxx/members/2
    //讀取:id參數的值 req.params.id
    //res.send("get product id " + req.params.id);
    connection.query(
      "select * from members where id=?",req.params.id,function(error, results) {
        if (error) throw error;
        res.json(results);
      }
    );
  })
  .put(function(req, res) {
    //PUT http://localhost:3000/xxx/members/2
    //讀取瀏覽器傳送過來的資料  req.body
    //修改資料
    //res.send("修改 " + req.params.id + " 資料");
    connection.query("update members set ? where id=?",[req.body,req.params.id] , function(error) {
      if (error) throw error;
      res.json({ message: "修改成功" });
    });
  })
  .delete(function(req, res) {
    //DELETE http://localhost:3000/xxx/members/2
    //刪除資料
    connection.query(
      "delete from members where id=?",req.params.id,function(error, results) {
        if (error) throw error;
        res.json({ message: "刪除成功" });
      }
    );
  });

module.exports = router;
