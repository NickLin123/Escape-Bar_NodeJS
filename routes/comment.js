var express = require('express');
var router = express.Router();
var mysql = require("mysql");

//建立連線
var connection = mysql.createConnection({
  host:'localhost',
  user:'root',
  password:'',
  database:'escapebar_proj'
  
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
      connection.query("select * from `comment`",function(error,rows){
        if (error) throw error;
        res.json(rows);
      })
  }) 
  .post(function(req, res) {//新增資料
     var _user = req.body;
    connection.query("insert into  `comment` set ?", _user,function(error){
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
    connection.query("select a.*, b.nickname, b.user_pic from  `comment` as a LEFT JOIN `member` as b ON a.uid = b.uid where gid=?", req.params.id,function(error,row){
      if(error) throw error;
      res.json(row);
    });
  
  
  }) 
  .put(function(req, res) {//修改資料
    var _comment = req.body;  
    console.log(req.body.comment);
    console.log(req.params.id);
    console.log(req.body.uid)
    var id = req.params.id;
    var uid = req.body.uid
       connection.query("update `comment` set comment=? where gid=? and uid=?",[req.body.comment,id,uid],function(error){
          if(error) throw error;
          res.json({ message: "修改成功" });
       })
  }) 

  // router.route("/member")
  // .get(function(req, res) {//會員照片&名稱
  //     connection.query("SELECT nickname,user_pic FROM member JOIN `comments` ON member.uid = `comments`.uid",function(error,rows){
  //       if (error) throw error;
  //       res.json(rows);
  //     })
  // }) 

  // router.route("/rating")
  // .get(function(req, res) {//評價平均數
  //     connection.query("SELECT AVG(rating)rating FROM `comment`",function(error,rows){
  //       if (error) throw error;
  //       res.json(rows);
  //     })
  // }) 
  router.route("/rating/:id")
  .get(function(req, res) {//評價平均數
      connection.query("SELECT AVG(rating)rating FROM  `comment` where gid=?",req.params.id,function(error,rows){
        if (error) throw error;
        res.json(rows);
      })
  }) 
  router.route("/ratingcard")
  .get(function(req, res) {//評價平均數
      connection.query("select a.gid, b.PRO_SEQ from  `comment` as a LEFT JOIN `Product` as b ON a.gid = b.gid where gid=?",req.params.id,function(error,rows){
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
      connection.query("SELECT COUNT(*)count FROM  `comment` where gid=?",req.params.id,function(error,rows){
        if (error) throw error;
        res.json(rows);
      })
  }) 

  router
  .route("/collection/")
  .post(function(req, res) {//收藏資料
    var _user = req.body;
  
   connection.query("insert into member_collectgame set ?", _user,function(error){
      if (error) throw error;
      res.json({ message: "收藏成功" });
   })
 }); 
  
 router
 .route("/track")
 .post(function(req, res) {//追蹤工作室
  connection.query("insert into member_trackstudio set ?",req.body,function(error){
     if (error) throw error;
     res.json({ message: "追蹤成功" });
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
.route("/member/:id")//評論遊戲的成員
.get(function(req, res) {
var id = req.params.id
console.log(req.params.id)
  connection.query("SELECT uid FROM `comment` where gid=?",id,function(error,row){
    if(error) throw error;
    res.json(row);

  });
}) 
  // .post(function(req, res) {
  //   var _user = req.body;
  //   connection.query("insert into comment set ?", _user,function(error){
  //      if (error) throw error;
  //      res.json({ message: "新增成功" });
  //   })
  // }) 


module.exports = router;
