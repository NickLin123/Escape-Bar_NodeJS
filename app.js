var express = require('express');
var cors = require('cors');

var mapRouter = require('./routes/mapquery');
var articleRouter = require('./routes/articlequery')

var app = express();
app.use(cors());


// 路徑要配合react再改
app.use('/map', mapRouter);
app.use('/article', articleRouter)

app.listen(3000, ()=>
    console.log(`Server is listening on port 3000`)
)