var express = require('express');
var router = express.Router();
var mysql = require("mysql");

//建立連線
var connection = mysql.createConnection({
  host:'localhost',
  user:'root',
  password:'',
  database:'project',
  
});
// connection.connect();
connection.connect(function(err) {
  if (err) {
    console.error("error connecting: " + err.stack);
    return;
  }
  console.log("connected as id " + connection.threadId);
});


router
  .route("/comment")
  .get(function(req, res) {//讀所有資料
      connection.query("select * from comment_test",function(error,rows){
        if (error) throw error;
        res.json(rows);
      })
  }) 
  .post(function(req, res) {//新增資料
     var _user = req.body;
    connection.query("insert into comment_test set ?", _user,function(error){
       if (error) throw error;
       res.json({ message: "評論成功" });
    })
  }); 
// router
//   .route("/comments/:id")
//   .get(function(req, res) {
//     connection.query("select * from comment where id=?", req.params.id,function(error,row){
//       if(error) throw error;
//       res.json(row);
//     });
  
  
//   }) 

  router
  .route("/comment/:id")//特定遊戲
  .get(function(req, res) {
    connection.query("select a.*, b.nickname, b.user_pic from `comment_test` as a LEFT JOIN `member` as b ON a.uid = b.uid where gid=?", req.params.id,function(error,row){
      if(error) throw error;
      res.json(row);
    });
  
  
  }) 
  .put(function(req, res) {//修改資料
  
       connection.query("update comments set ? where id=?",[req.body,req.params.id],function(error){
          if(error) throw error;
          res.json({ message: "修改成功" });
       })
  }) 

  router.route("/member")
  .get(function(req, res) {//會員照片&名稱
      connection.query("SELECT nickname,user_pic FROM member JOIN `comments` ON member.uid = `comments`.uid",function(error,rows){
        if (error) throw error;
        res.json(rows);
      })
  }) 

  // router.route("/rating")
  // .get(function(req, res) {//評價平均數
  //     connection.query("SELECT AVG(rating)rating FROM `comment`",function(error,rows){
  //       if (error) throw error;
  //       res.json(rows);
  //     })
  // }) 
  router.route("/rating/:id")
  .get(function(req, res) {//評價平均數
      connection.query("SELECT AVG(rating)rating FROM `comment_test` where gid=?",req.params.id,function(error,rows){
        if (error) throw error;
        res.json(rows);
      })
  }) 

  // router.route("/count")
  // .get(function(req, res) {//評價總筆數
  //     connection.query("SELECT COUNT(*)count FROM comments",function(error,rows){
  //       if (error) throw error;
  //       res.json(rows);
  //     })
  // }) 

  router.route("/count/:id")
  .get(function(req, res) {//評價總筆數
      connection.query("SELECT COUNT(*)count FROM comment_test where gid=?",req.params.id,function(error,rows){
        if (error) throw error;
        res.json(rows);
      })
  }) 

  router
  .route("/collection/:id")
  .get(function(req, res) {
    connection.query("SELECT name FROM `comments`",function(error,row){
      if(error) throw error;
      res.json(row);

    });
  }) 
  .post(function(req, res) {//收藏資料
    var _user = req.body;
  
   connection.query("insert into collection set ?", _user,function(error){
      if (error) throw error;
      res.json({ message: "收藏成功" });
   })
 }); 
  
  router
//   .route("/memberapi")
//   .get(function(req, res) {
//     connection.query("SELECT comment FROM member INNER JOIN comment ON (member.uid = comment.uid )",function(error,row){
//       if(error) throw error;
//       res.json(row);

//     });
//   }) 
  // .route("/memberapi")
  // .get(function(req, res) {
  //   connection.query("SELECT * FROM `member`",function(error,row){
  //     if(error) throw error;
  //     res.json(row);

  //   });
  // }) 
  // .post(function(req, res) {
  //   var _user = req.body;
  //   connection.query("insert into comment set ?", _user,function(error){
  //      if (error) throw error;
  //      res.json({ message: "新增成功" });
  //   })
  // }) 


module.exports = router;
