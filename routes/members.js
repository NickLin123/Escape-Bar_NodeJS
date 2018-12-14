var express = require('express');
var router = express.Router();
var mysql = require('mysql');
const multer = require('multer');

// node.js 連接 MySQL 資料庫
// 建立連線物件
// var connection = mysql.createConnection({
//   host: 'localhost',
//     port: 8889,
//     user: 'root',
//     password: 'root',
//     database: 'escape_bar'
// });

const connection = mysql.createConnection({
  host: 'localhost',
  // host: "192.168.24.140",
  user: 'mick',
  password: '5678',
  database: 'escapebar_proj'
})

// 真正建立連線
// connection.connect();

//     /* GET members listing. */
//     router.get('/', function(req, res, next) {
//       res.send('GET members API listing.');
//     });
//     //////////////////////////

//     router.get('/session', function(req, res, next) {

//       if (!req.session) {
//         res.send("session null");
//         return;
//       }

//       if(req.session.isVisit) {
//         req.session.isVisit++;
//         req.session.other++;
//         res.send('<p>第 ' + req.session.isVisit + '次來此頁面</p>'+req.session.other);
//       } else {
//         req.session.isVisit = 1;
//         req.session.other = 1;
//         res.send("歡迎第一次到訪");
//       }
//     });

    // Logout API
    router.route('/logout')
    // POST：http://localhost:3000/api/logout
      .post((req, res) => {
        req.session.isLogin = false;
        res.json({message: "登出成功！"});
      })

    // Login API
    router.route('/login')
    // POST：http://localhost:3000/api/login
      .post((req, res) => {
          connection.query("SELECT * FROM member WHERE email=?", [req.body.email], function(error, results) {
              if (error) throw error;
              if (results.length == 0) {
                res.send({
                  message: {message: "此帳號尚未註冊！"}
                })
              } else if (results[0].password != req.body.password) {
                res.send({
                  message: {message: "密碼錯誤！"}
                })
              } else {
                req.session.isLogin = true;
                var member = results[0];
                req.session.member = {
                  uid: member.uid,
                  email: member.email,
                  password: member.password,
                  nickname: member.nickname,
                  gender: member.gender,
                  birthday: member.birthday,
                  city_id: member.city_id,
                  address: member.address,
                  mobile: member.mobile,
                  user_pic: member.user_pic,
                  create_at: member.create_at
                };
                
                // res.send(req.session.member);
                // res.json({message: "登入成功！"});
                console.log(req.session.member);
                console.log(req.session.member.uid);

                res.send({
                  session: req.session.member,
                  message: {message: "登入成功！"}
                })
                // {session:{key:value}},message:{key:value}}

              }
          });
      })

    // ================= member API ================= //
    // http://localhost:3000/api/members，api 為 app.js 做設定的
    router.route('/members')
    // GET：http://localhost:3000/api/members
    .get(function(req,res){
      // res.send("get all members");
      connection.query("SELECT * FROM member",function(error,results){
        if(error) throw error;
        res.json(results); // 將資料庫回傳的結果，轉成 json 格式，回應給瀏覽器 Client 端
      });
    })
    
    // POST：http://localhost:3000/api/members
    .post(function(req,res){
      // 讀取從瀏覽器 Client 端，傳送過來的資料
      // res.send("新增資料");
      connection.query("INSERT INTO member SET ?", req.body, function(error){
        if(error) throw error;
        res.json({message: "註冊成功！"});
      });
    })

/////////////////////////////////////////////
// 文件上傳

// 設定將上傳的檔案放到reactapp/build/uploads的資料夾下
var uploadFolder = 'public/images/users';
var storage = multer.diskStorage({
  destination: function (req, file, cb) {
    cb(null, uploadFolder);
  },
  filename: function (req, file, cb) {
    cb(null, file.originalname);
  }
});

var upload = multer({ storage: storage })
/////////////////////////////////////////////

    // http://localhost:3000/api/members/id參數
    router.route('/members/:id')
    // GET：http://localhost:3000/api/members/1
    .get(function(req,res){
      // 讀取:id參數的值 req.params.id
      // res.send("get member id: " + req.params.id);
      connection.query("SELECT * FROM member where uid=?", req.params.id, function(error,results){
        if(error) throw error;
        res.json(results); // 將資料庫回傳的結果，轉成 json 格式，回應給瀏覽器 Client 端
      });
    })

    // 修改資料
    // PUT：http://localhost:3000/api/members/2
    // .put(function(req,res){
    // 單圖上傳
    .put(upload.single('user_pic'),function(req,res){
      console.log("put")
       var _user = req.body;
      // //將上傳的檔案名稱取出加到_user物件中
       _user.user_pic = req.file.filename
      //  console.log(_user)
      //  console.log(req.params.id)

      connection.query("UPDATE member SET ? where uid=?",[_user, req.params.id] , function(error){
        if(error) throw error;
        res.json({message: "修改成功"});
       // console.log(req.body);
      });

    })

    // DELETE：http://localhost:3000/api/members/3
    .delete(function(req,res){
      // 刪除資料
      // res.send("刪除" + req.params.id + "資料");
      connection.query("DELETE FROM member where uid=?", req.params.id, function(error,results){
        if(error) throw error;
        res.json({message: "刪除成功"});
      });
    })

    // ================= member_collectgame API ================= //
    router.route('/collects')
    // GET：http://localhost:3000/api/collects
    .get(function(req,res){
      connection.query("SELECT * FROM member_collectgame JOIN games_info ON member_collectgame.gid = games_info.gid JOIN city_list ON games_info.city_id = city_list.city_id",function(error,results){
        if(error) throw error;
        res.json(results); // 將資料庫回傳的結果，轉成 json 格式，回應給瀏覽器 Client 端
      });
    })

    router.route('/collects/:id')
    // GET：http://localhost:3000/api/collects/3
    .get(function(req,res){
      connection.query("SELECT * FROM `member_collectgame` JOIN `products` ON `member_collectgame`.gid = `products`.PRO_SEQ JOIN `product_images` ON `products`.PRO_SEQ = `product_images`.PRO_SEQ JOIN `markers` ON `products`.PRO_SEQ = `markers`.sid JOIN `city` ON `markers`.city_id = `city`.city_id where uid=?", req.params.id,function(error,results){
        if(error) throw error;
        res.json(results); // 將資料庫回傳的結果，轉成 json 格式，回應給瀏覽器 Client 端
      });
    })

    // DELETE：http://localhost:3000/api/collects/3
    .delete(function(req,res){
      // 刪除資料
      // res.send("刪除" + req.params.id + "資料");
      connection.query("DELETE FROM member_collectgame where mcg_id=?", req.params.id, function(error,results){
        if(error) throw error;
        res.json({message: "取消收藏"});
      });
    })

    // 最近的四筆收藏 (登入會員)
    router.route('/lacollect/:id')
    // GET：http://localhost:3000/api/lacollect/3
    .get(function(req,res){
      connection.query("SELECT * FROM `member_collectgame` JOIN `products` ON `member_collectgame`.`gid` = `products`.`PRO_SEQ` JOIN `product_images` ON `products`.`PRO_SEQ` = `product_images`.`PRO_SEQ` JOIN `company` ON `products`.`CID` = `company`.`cid` where uid=? LIMIT 0,4", req.params.id,function(error,results){
        if(error) throw error;
        res.json(results); // 將資料庫回傳的結果，轉成 json 格式，回應給瀏覽器 Client 端
      });
    })

    // ================= member_trackstudio API ================= //
    router.route('/studios')
    // GET：http://localhost:3000/api/studios
    .get(function(req,res){
      connection.query("SELECT * FROM member_trackstudio JOIN studios_info ON member_trackstudio.cid = studios_info.cid",function(error,results){
        if(error) throw error;
        res.json(results); // 將資料庫回傳的結果，轉成 json 格式，回應給瀏覽器 Client 端
      });
    })

    router.route('/studios/:id')
    // GET：http://localhost:3000/api/studios/3
    .get(function(req,res){
      connection.query("SELECT * FROM `member_trackstudio` JOIN `company` ON `member_trackstudio`.cid = `company`.cid where uid=?", req.params.id,function(error,results){
        if(error) throw error;
        res.json(results); // 將資料庫回傳的結果，轉成 json 格式，回應給瀏覽器 Client 端
      });
    })

    // DELETE：http://localhost:3000/api/studios/3
    .delete(function(req,res){
      // 刪除資料
      // res.send("刪除" + req.params.id + "資料");
      connection.query("DELETE FROM member_trackstudio where mts_id=?", req.params.id, function(error,results){
        if(error) throw error;
        res.json({message: "取消追蹤"});
      });
    })

    router.route('/lastudio/:id')
    // GET：http://localhost:3000/api/lastudio/3
    .get(function(req,res){
      connection.query("SELECT * FROM `member_trackstudio` JOIN `company` ON `member_trackstudio`.`cid` = `company`.`cid` where uid=? LIMIT 0,6", req.params.id,function(error,results){
        if(error) throw error;
        res.json(results); // 將資料庫回傳的結果，轉成 json 格式，回應給瀏覽器 Client 端
      });
    })

    // ================= member_recordgame API ================= //

/////////////////////////////////////////////
// 文件上傳

// 設定將上傳的檔案放到reactapp/build/uploads的資料夾下
var uploadFolder2 = 'public/images/records';
var storage2 = multer.diskStorage({
  destination: function (req, file, cb) {
    cb(null, uploadFolder2);
  },
  filename: function (req, file, cb) {
    cb(null, file.originalname);
  }
});

var upload2 = multer({ storage: storage2 })
/////////////////////////////////////////////

    // http://localhost:3000/api/records，api 為 app.js 做設定的
    router.route('/records')
    // GET：http://localhost:3000/api/records
    .get(function(req,res){
      // res.send("get all records");
      connection.query("SELECT * FROM member_recordgame",function(error,results){
        if(error) throw error;
        res.json(results); // 將資料庫回傳的結果，轉成 json 格式，回應給瀏覽器 Client 端
      });
    })

    // POST：http://localhost:3000/api/records
    .post(upload2.single('record_pic'),function(req,res){
      // 讀取從瀏覽器 Client 端，傳送過來的資料
      var _user = req.body;
      _user.record_pic = req.file.filename

      connection.query("INSERT INTO member_recordgame SET ?", _user, function(error){
        if(error) throw error;
        res.json({message: "新增成功！"});
      });
    })

    router.route('/records/:id')
    // GET：http://localhost:3000/api/records/3
    .get(function(req,res){
      // res.send("get all records");
      connection.query("SELECT * FROM `member_recordgame` JOIN `products` ON `member_recordgame`.`gid` = `products`.`PRO_SEQ` JOIN `product_images` ON `products`.`PRO_SEQ` = `product_images`.`PRO_SEQ` WHERE uid=?", req.params.id,function(error,results){
        if(error) throw error;
        res.json(results); // 將資料庫回傳的結果，轉成 json 格式，回應給瀏覽器 Client 端
      });
    })

    router.route('/larecord/:id')
    // GET：http://localhost:3000/api/larecord/3
    .get(function(req,res){
      connection.query("SELECT * FROM `member_recordgame` JOIN `products` ON `member_recordgame`.`gid` = `products`.`PRO_SEQ` JOIN `product_images` ON `products`.`PRO_SEQ` = `product_images`.`PRO_SEQ` WHERE uid=? LIMIT 0,1", req.params.id,function(error,results){
        if(error) throw error;
        res.json(results); // 將資料庫回傳的結果，轉成 json 格式，回應給瀏覽器 Client 端
      });
    })

    router.route('/recordedit/:id')
    // GET：http://localhost:3000/api/recordedit/3
    .get(function(req,res){
      connection.query("SELECT * FROM `member_recordgame` WHERE mrg_id=?", req.params.id,function(error,results){
        if(error) throw error;
        res.json(results); // 將資料庫回傳的結果，轉成 json 格式，回應給瀏覽器 Client 端
      });
    })

    // 修改資料
    // PUT：http://localhost:3000/api/recordedit/3
    // 單圖上傳
    .put(upload2.single('record_pic'),function(req,res){
      console.log("put")
       var _user = req.body;
      // //將上傳的檔案名稱取出加到_user物件中
       _user.record_pic = req.file.filename
      //  console.log(_user)
      //  console.log(req.params.id)

      connection.query("UPDATE `member_recordgame` SET ? where mrg_id=?",[_user, req.params.id] , function(error){
        if(error) throw error;
        res.json({message: "修改成功"});
       // console.log(req.body);
      });

    })

    // ================= member buy_list API ================= //
    // http://localhost:3000/api/orders，api 為 app.js 做設定的
    
    // 處理中的訂單，STATUS = 1,2 (所有會員)
    router.route('/orders')
    // GET：http://localhost:3000/api/orders
    .get(function(req,res){
      // res.send("get all orders");
        connection.query("SELECT * FROM `buy_list` JOIN `status_list` ON `buy_list`.`STATUS` = `status_list`.`STATUS` JOIN `games_info` ON `buy_list`.`STOCK_SID` = `games_info`.`gid` WHERE `status_list`.`STATUS` = 1 OR `status_list`.`STATUS`= 2",function(error,results){
        if(error) throw error;
        res.json(results); // 將資料庫回傳的結果，轉成 json 格式，回應給瀏覽器 Client 端
      });
    })

    // 已取消的訂單，STATUS = 3,4 (所有會員)
    router.route('/orders_2')
    // GET：http://localhost:3000/api/orders_2
    .get(function(req,res){
      // res.send("get all orders");
      connection.query("SELECT * FROM `buy_list` JOIN `status_list` ON `buy_list`.`STATUS` = `status_list`.`STATUS` JOIN `games_info` ON `buy_list`.`STOCK_SID` = `games_info`.`gid` WHERE `status_list`.`STATUS` = 3 OR `status_list`.`STATUS`= 4",function(error,results){
        if(error) throw error;
        res.json(results); // 將資料庫回傳的結果，轉成 json 格式，回應給瀏覽器 Client 端
      });
    })

    // 進行中的訂單，STATUS = 1 (登入會員)
    router.route('/orders/:id')
    // GET：http://localhost:3000/api/orders/3
    .get(function(req,res){
      // res.send("get all orders");
        // connection.query("SELECT * FROM `buy_list` JOIN `product_stock` ON `buy_list`.`STOCK_SID` = `product_stock`.`STOCK_ID` JOIN `status_list` ON `buy_list`.`STATUS` = `status_list`.`STATUS` JOIN `products` ON `product_stock`.`PRO_SEQ` = `products`.`PRO_SEQ` JOIN `product_images` ON `products`.`PRO_SEQ` = `product_images`.`PRO_SEQ` JOIN `company` ON `products`.`CID` = `company`.`cid` JOIN `company_comparison` ON `company`.`cid` = `company_comparison`.`cid` JOIN `markers` ON `company_comparison`.`sid` = `markers`.`sid` WHERE `status_list`.`STATUS` = 1 AND uid=?", req.params.id,function(error,results){
        connection.query("SELECT * FROM `buy_list` JOIN `product_stock` ON `buy_list`.`STOCK_SID` = `product_stock`.`SID` JOIN `status_list` ON `buy_list`.`STATUS` = `status_list`.`STATUS` JOIN `products` ON `product_stock`.`PRO_SEQ` = `products`.`PRO_SEQ` JOIN `product_images` ON `products`.`PRO_SEQ` = `product_images`.`PRO_SEQ` JOIN `company` ON `products`.`CID` = `company`.`cid` JOIN `company_comparison` ON `company`.`cid` = `company_comparison`.`cid` JOIN `markers` ON `company_comparison`.`sid` = `markers`.`sid` WHERE `status_list`.`STATUS` = 1 AND uid=?", req.params.id,function(error,results){

          if(error) throw error;
        res.json(results); // 將資料庫回傳的結果，轉成 json 格式，回應給瀏覽器 Client 端
      });
    })

    // PUT：http://localhost:3000/api/orders/3
    .put(function(req,res){
      // 修改資料
      // res.send("修改" + req.params.id + "資料");
      connection.query("UPDATE buy_list SET STATUS=4 where STOCK_SID=?",req.params.id , function(error){
        if(error) throw error;
        res.json({message: "取消成功"});
      });
    })

    // DELETE：http://localhost:3000/api/orders/3
    .delete(function(req,res){
      // 刪除資料
      // res.send("刪除" + req.params.id + "資料");
      connection.query("DELETE FROM buy_list where UID=?", req.params.id, function(error,results){
        if(error) throw error;
        res.json({message: "取消訂單"});
      });
    })

    // // 已取消的訂單，STATUS = 4 (登入會員)
    router.route('/orders_2/:id')
    // GET：http://localhost:3000/api/orders/3
    .get(function(req,res){
      // res.send("get all orders");
        // connection.query("SELECT * FROM `buy_list` JOIN `product_stock` ON `buy_list`.`STOCK_SID` = `product_stock`.`STOCK_ID` JOIN `status_list` ON `buy_list`.`STATUS` = `status_list`.`STATUS` JOIN `products` ON `product_stock`.`PRO_SEQ` = `products`.`PRO_SEQ` JOIN `product_images` ON `products`.`PRO_SEQ` = `product_images`.`PRO_SEQ` JOIN `company` ON `products`.`CID` = `company`.`cid` JOIN `company_comparison` ON `company`.`cid` = `company_comparison`.`cid` JOIN `markers` ON `company_comparison`.`sid` = `markers`.`sid` WHERE `status_list`.`STATUS` = 4 AND uid=?", req.params.id,function(error,results){
        connection.query("SELECT * FROM `buy_list` JOIN `product_stock` ON `buy_list`.`STOCK_SID` = `product_stock`.`SID` JOIN `status_list` ON `buy_list`.`STATUS` = `status_list`.`STATUS` JOIN `products` ON `product_stock`.`PRO_SEQ` = `products`.`PRO_SEQ` JOIN `product_images` ON `products`.`PRO_SEQ` = `product_images`.`PRO_SEQ` JOIN `company` ON `products`.`CID` = `company`.`cid` JOIN `company_comparison` ON `company`.`cid` = `company_comparison`.`cid` JOIN `markers` ON `company_comparison`.`sid` = `markers`.`sid` WHERE `status_list`.`STATUS` = 4 AND uid=?", req.params.id,function(error,results){
          if(error) throw error;
        res.json(results); // 將資料庫回傳的結果，轉成 json 格式，回應給瀏覽器 Client 端
      });
    })

    // 進行中的一筆訂單，STATUS = 1 (登入會員)
    router.route('/laorder/:id')
    // GET：http://localhost:3000/api/laorder/3
    .get(function(req,res){
        // connection.query("SELECT * FROM `buy_list` JOIN `product_stock` ON `buy_list`.`STOCK_SID` = `product_stock`.`STOCK_ID` JOIN `status_list` ON `buy_list`.`STATUS` = `status_list`.`STATUS` JOIN `products` ON `product_stock`.`PRO_SEQ` = `products`.`PRO_SEQ` JOIN `product_images` ON `products`.`PRO_SEQ` = `product_images`.`PRO_SEQ` WHERE `status_list`.`STATUS` = 1 AND uid=? LIMIT 0,1", req.params.id,function(error,results){
        connection.query("SELECT * FROM `buy_list` JOIN `product_stock` ON `buy_list`.`STOCK_SID` = `product_stock`.`SID` JOIN `status_list` ON `buy_list`.`STATUS` = `status_list`.`STATUS` JOIN `products` ON `product_stock`.`PRO_SEQ` = `products`.`PRO_SEQ` JOIN `product_images` ON `products`.`PRO_SEQ` = `product_images`.`PRO_SEQ` WHERE `status_list`.`STATUS` = 1 AND uid=? LIMIT 0,1", req.params.id,function(error,results){

          if(error) throw error;
        res.json(results); // 將資料庫回傳的結果，轉成 json 格式，回應給瀏覽器 Client 端
      });
    })

    // ================= member activity_list API ================= //
    router.route('/groups/:id')
    // GET：http://localhost:3000/api/groups/3
    .get(function(req,res){
      connection.query("SELECT * FROM `activity_list` JOIN `products` ON `activity_list`.`pro_seq` = `products`.`PRO_SEQ` JOIN `product_images` ON `products`.`PRO_SEQ` = `product_images`.`PRO_SEQ` JOIN `company` ON `products`.`CID` = `company`.`cid` WHERE act_uid=?", req.params.id,function(error,results){
      if(error) throw error;
      res.json(results); // 將資料庫回傳的結果，轉成 json 格式，回應給瀏覽器 Client 端
      });
    })

    // DELETE：http://localhost:3000/api/groups/3
    .delete(function(req,res){
      // 刪除資料
      // res.send("刪除" + req.params.id + "資料");
      connection.query("DELETE FROM `activity_list` where tid=?", req.params.id, function(error,results){
        if(error) throw error;
        res.json({message: "刪除成功"});
      });
    })

    // 已參與成員
    router.route('/groupsjoin/:id')
    // GET：http://localhost:3000/api/groupsjoin/3
    .get(function(req,res){
      connection.query("SELECT * FROM `activity_joinrecord` join `member` on `activity_joinrecord`.`join_uid` = `member`.`uid` WHERE tid=?", req.params.id,function(error,results){
      if(error) throw error;
      res.json(results); // 將資料庫回傳的結果，轉成 json 格式，回應給瀏覽器 Client 端
      });
    })

    // 最近的一筆揪團 (登入會員)
    router.route('/lagroup/:id')
    // GET：http://localhost:3000/api/groups/3
    .get(function(req,res){
      connection.query("SELECT * FROM `activity_list` JOIN `products` ON `activity_list`.`pro_seq` = `products`.`PRO_SEQ` JOIN `product_images` ON `products`.`PRO_SEQ` = `product_images`.`PRO_SEQ` JOIN `company` ON `products`.`CID` = `company`.`cid` WHERE act_uid=? LIMIT 0,1", req.params.id,function(error,results){
      if(error) throw error;
      res.json(results); // 將資料庫回傳的結果，轉成 json 格式，回應給瀏覽器 Client 端
      });
    })

    // 參與的揪團
    router.route('/groups2/:id')
    // GET：http://localhost:3000/api/groups2/3
    .get(function(req,res){
      connection.query("SELECT * FROM `activity_joinrecord` join `activity_list` on `activity_joinrecord`.`tid` = `activity_list`.`tid` join `products` on `activity_list`.pro_seq = `products`.`PRO_SEQ` join `product_images` on `products`.`PRO_SEQ` = `product_images`.`PRO_SEQ` join `company` on `products`.`CID` = `company`.`cid` WHERE join_uid=?", req.params.id,function(error,results){
      if(error) throw error;
      res.json(results); // 將資料庫回傳的結果，轉成 json 格式，回應給瀏覽器 Client 端
      });
    })

    .delete(function(req,res){
      // 刪除資料
      // res.send("刪除" + req.params.id + "資料");
      connection.query("DELETE FROM `activity_joinrecord` where aid=?", req.params.id, function(error,results){
        if(error) throw error;
        res.json({message: "刪除成功"});
      });
    })

module.exports = router;