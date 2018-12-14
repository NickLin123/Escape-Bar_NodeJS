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

// const connection = mysql.createConnection({
//   host: 'localhost',
//   // host: "192.168.24.140",
//   user: 'mick',
//   password: '5678',
//   database: 'escapebar_proj'
// })

const connection = mysql.createConnection({
  host: 'localhost', // 主機位址
  database: 'escape', // 資料庫名稱
  user: 'root', // 帳號
  password: 'admin' // 密碼
});

connection.connect(err =>{
    if(err) { return err;}
});

//查詢所有工作室（不分縣市查詢）
router.route('/company_list')
      .get(function(req,res){
        connection.query(" SELECT * FROM `company` ", function(error, results){
          if(error) throw error;
          res.json(results);
        })
      })

//查詢所有工作室（台北市）
router.route('/company_list/taipei')
      .get(function(req,res){
        connection.query(" select a.*, b.taipei from `company` as a LEFT JOIN `company_city` as b ON a.cid = b.cid WHERE b.taipei = 1 ", function(error, results){
          if(error) throw error;
          res.json(results);
        })
      })

//查詢所有工作室（新北市）
router.route('/company_list/newTaipei')
      .get(function(req,res){
        connection.query(" select a.*, b.newTaipei from `company` as a LEFT JOIN `company_city` as b ON a.cid = b.cid WHERE b.newTaipei = 1 ", function(error, results){
          if(error) throw error;
          res.json(results);
        })
      })

//查詢所有工作室（桃園市）
router.route('/company_list/taoyuan')
      .get(function(req,res){
        connection.query(" select a.*, b.taoyuan from `company` as a LEFT JOIN `company_city` as b ON a.cid = b.cid WHERE b.taoyuan = 1 ", function(error, results){
          if(error) throw error;
          res.json(results);
        })
      })

router.route('/company_list/hsinchu')
      .get(function(req,res){
        connection.query(" select a.*, b.hsinchu_city from `company` as a LEFT JOIN `company_city` as b ON a.cid = b.cid WHERE b.hsinchu_city = 1 ", function(error, results){
          if(error) throw error;
          res.json(results);
        })
      })

router.route('/company_list/taichung')
      .get(function(req,res){
        connection.query(" select a.*, b.taichung from `company` as a LEFT JOIN `company_city` as b ON a.cid = b.cid WHERE b.taichung = 1 ", function(error, results){
          if(error) throw error;
          res.json(results);
        })
      })

router.route('/company_list/nantou')
      .get(function(req,res){
        connection.query(" select a.*, b.nantou from `company` as a LEFT JOIN `company_city` as b ON a.cid = b.cid WHERE b.nantou = 1 ", function(error, results){
          if(error) throw error;
          res.json(results);
        })
      })

router.route('/company_list/chaiyi')
      .get(function(req,res){
        connection.query(" select a.*, b.chaiyi_city from `company` as a LEFT JOIN `company_city` as b ON a.cid = b.cid WHERE b.chaiyi_city = 1 ", function(error, results){
          if(error) throw error;
          res.json(results);
        })
      })

router.route('/company_list/tainan')
      .get(function(req,res){
        connection.query(" select a.*, b.tainan from `company` as a LEFT JOIN `company_city` as b ON a.cid = b.cid WHERE b.tainan = 1 ", function(error, results){
          if(error) throw error;
          res.json(results);
        })
      })

router.route('/company_list/kaohsiung')
      .get(function(req,res){
        connection.query(" select a.*, b.kaohsiung from `company` as a LEFT JOIN `company_city` as b ON a.cid = b.cid WHERE b.kaohsiung = 1 ", function(error, results){
          if(error) throw error;
          res.json(results);
        })
      })

router.route('/company_list/yilan')
      .get(function(req,res){
        connection.query(" select a.*, b.yilan from `company` as a LEFT JOIN `company_city` as b ON a.cid = b.cid WHERE b.yilan = 1 ", function(error, results){
          if(error) throw error;
          res.json(results);
        })
      })

router.route('/company_list/outdoor')
      .get(function(req,res){
        connection.query(" select a.*, b.outdoor from `company` as a LEFT JOIN `company_city` as b ON a.cid = b.cid WHERE b.outdoor = 1 ", function(error, results){
          if(error) throw error;
          res.json(results);
        })
      })

router.route('/game_img/:cid')
      .get(function(req,res){
        connection.query(" select a.cid, b.cid, b.pro_seq, c.* from `company` as a LEFT JOIN `products` as b ON a.cid = b.cid  LEFT JOIN `product_images` as c ON b.pro_seq = c.pro_seq WHERE c.status = 'M' AND a.cid = ? ", req.params.cid, function(error, results){
          if(error) throw error;
          res.json(results);
        })
      })

//========================================================== companyInfo ==========================================================
router.route('/selectOption/:cid')
      .get(function(req,res){
        connection.query(" select a.cid, b.*, c.sid, c.site_name from `company` as a LEFT JOIN `company_comparison` as b ON a.cid = b.cid LEFT JOIN `markers` as c ON b.sid = c.sid WHERE a.cid = ?", req.params.cid, function(error, results){
          if(error) throw error;
          res.json(results);
        })
      })

router.route('/optionDefault/:cid/:city_id')
      .get(function(req,res){
        connection.query(" select a.cid, b.*, c.sid, c.site_name from `company` as a LEFT JOIN `company_comparison` as b ON a.cid = b.cid LEFT JOIN `markers` as c ON b.sid = c.sid WHERE a.cid = ? AND c.city_id = ?", [req.params.cid, req.params.city_id] , function(error, results){
          if(error) throw error;
          res.json(results);
        })
      })

router.route('/companyInfo/:cid')    
      .get(function(req,res){
        connection.query(" select * from `company` WHERE cid = ?", req.params.cid, function(error, results){
          if(error) throw error;
          res.json(results);
        })
      })

router.route('/markersInfo/:sid')
      .get(function(req,res){
        connection.query(" select * from `markers` WHERE sid = ?", req.params.sid, function(error, results){
          if(error) throw error;
          res.json(results);
        })
      })
 
router.route('/productsInfoAll/:cid')
      .get(function(req,res){
        connection.query(" SELECT a.*, b.* FROM `products` a INNER JOIN (SELECT pro_name, MIN(pro_seq) AS MinProSEQ FROM `products` GROUP BY pro_name) c ON a.pro_name = c.pro_name AND a.pro_seq = c.MinProSEQ LEFT JOIN `product_images` as b ON a.pro_seq = b.pro_seq WHERE a.cid = ? AND b.status = 'M' ", req.params.cid, function(error, results){
          if(error) throw error;
          res.json(results);
        })
      })

router.route('/productsInfoThis/:cid/:sid')
      .get(function(req,res){
        connection.query(" SELECT a.*, b.* FROM `products` as a LEFT JOIN `product_images` as b ON a.pro_seq = b.pro_seq WHERE cid = ? AND p_id = ?", [req.params.cid, req.params.sid], function(error, results){
          if(error) throw error;
          res.json(results);
        })
      })

module.exports = router;