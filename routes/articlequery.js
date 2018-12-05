var express = require('express');
var router = express.Router();
var mysql = require("mysql");



const connection = mysql.createConnection({
    host: 'localhost',
    user: 'mick',
    password: '5678',
    database: 'escapebar_proj'
})

connection.connect(err =>{
    if(err) { return err;}
});

console.log(connection);

// 部落格文章
router.route('/:name')
    .get((req, res, next) => {
        connection.query("SELECT * FROM articles WHERE article_name=?", req.params.name, (err, results)=>{
            if(err){return res.send(err)};
            return res.json({
                data:results
            })
        });
    });

module.exports = router;