var express = require('express');
var cors = require('cors');

var mapRouter = require('./routes/mapquery');

var app = express();
app.use(cors());


// 路徑要配合react再改
app.use('/map', mapRouter);

app.listen(4000, ()=>
    console.log(`Server is listening on port 4000`)
)