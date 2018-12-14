var express = require('express');
var router = express.Router();
var mysql = require('mysql');

// 建立連線
// var connection = mysql.createConnection({
//     host: "192.168.24.140",
//     user: 'keith77377',
//     password: '',
//     database: 'escapebar_proj'
// });

var connection = mysql.createConnection({
<<<<<<< HEAD
  host: 'localhost', // 主機位址
  database: 'escape', // 資料庫名稱
  user: 'root', // 帳號
  password: 'admin' // 密碼
=======
  host: 'localhost',
  port: 8889,
  user: 'root',
  password: 'root',
  database: 'escape_bar'
>>>>>>> Charlie
});

connection.connect(err =>{
    if(err) { return err;}
});

router.route('/activity_list')
      .get(function(req,res){
        connection.query("select a.*, b.*, c.sid, c.s_name, d.*, e.uid, e.nickname, e.user_pic from `activity_list` as a left join `products` as b ON a.pro_seq = b.pro_seq left join `markers` as c ON b.p_id = c.sid left join `product_images` as d ON d.pro_seq = a.pro_seq left join `member` as e ON a.act_uid = e.uid", function(error,results,fields){
          if(error){
            throw error;
          }
          res.json(results);
        })
      })
      .post(function(req,res){
        //讀取瀏覽器傳送過來的資料  req.body
        // req.send("新增資料");  results代表資料庫讀取的資料
        connection.query('insert into `activity_list` set ?', req.body, function(error){
          if(error) throw error;
          res.json({message:"新增成功"});
        })
      })

router.route('/activity_list/:tid')
      .get(function(req,res){
        connection.query("select a.*, b.*, c.*, d.* from `activity_list` as a left join `products` as b ON a.pro_seq = b.pro_seq left join `product_images` as c ON a.pro_seq = c.pro_seq left join `markers` as d ON b.P_ID = d.sid where a.tid=? AND c.status = 'M'", req.params.tid, function(error, results){
          if(error) throw error;
          res.json(results);
        })
      })

      .put(function(req,res){
        // res.send("修改" + req.params.id + "資料");
        connection.query('update `activity_list` set ? where tid=?',[req.body, req.params.tid], function(error){
          if(error) throw error;
          res.json({message:"參與成功"});
        })
      })

      .delete(function(req,res){
        // res.send("刪除" + req.params.id + "資料");
        connection.query('delete from `activity_list` where tid=?',req.params.tid, function(error){
          if(error) throw error;
          res.json({message:"刪除成功"});
        }) 
      })

router.route('/activity_joinRecord')
      .get(function(req,res){
        connection.query("select * from `activity_joinRecord`", function(error,results,fields){
          if(error){
            throw error;
          }
          res.json(results);
        })
      })
      .post(function(req,res){
        //讀取瀏覽器傳送過來的資料  req.body
        // req.send("新增資料");  results代表資料庫讀取的資料
        connection.query('insert into `activity_joinRecord` set ?', req.body, function(error){
          if(error) throw error;
          res.json({message:"參與揪團成功，已成功發送使用者資訊給揪團者，請密切注意註冊信箱有無最新消息"});
        })
      })

router.route('/activity_joinRecord/:tid')
      .get(function(req,res){
        connection.query("select * from `activity_joinRecord` where tid=?", req.params.tid, function(error, results){
          if(error) throw error;
          res.json(results);
        })
      })

router.route('/game/:pro_name')
      .get(function(req,res){
        connection.query("SELECT a.* FROM `products` a INNER JOIN (SELECT pro_name, MIN(pro_seq) AS MinProSEQ FROM `products` GROUP BY pro_name) c ON a.pro_name = c.pro_name AND a.pro_seq = c.MinProSEQ WHERE a.PRO_NAME LIKE ?", '%'+req.params.pro_name+'%', function(error,results,fields){
          if(error){
            throw error;
          }
          res.json(results);
        })
      })

router.route('/site/selectOption/:pro_name')
      .get(function(req,res){
        connection.query("SELECT a.*, b.* FROM `products` as a left join `markers` as b ON a.p_id = b.sid where a.PRO_NAME = ?", req.params.pro_name, function(error,results,fields){
          if(error){
            throw error;
          }
          res.json(results);
        })
      })

router.route('/gameInfo/:pro_seq')
      .get(function(req,res){
        connection.query("select a.*, b.* from `products` as a left join `product_images` as b ON a.pro_seq = b.pro_seq where a.pro_seq=? AND b.status = 'M'", req.params.pro_seq, function(error, results){
          if(error) throw error;
          res.json(results);
        })
      })
module.exports = router;