var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');
var cors = require('cors');
var session = require('express-session');
var commentRouter = require('./routes/comment')

var indexRouter = require('./routes/index');
var usersRouter = require('./routes/users');
var membersRouter = require('./routes/members');

var porListRouter = require('./routes/pro_list');
var mapRouter = require('./routes/mapquery');
var articleRouter = require('./routes/articlequery')
var startActivityRouter = require('./routes/startActivity')
var companyRouter = require('./routes/company');
var memberRouter = require('./routes/member');

var app = express();

app.use(session({
  secret: 'abcdefg1234567', // recommand 128 bytes random string
  resave: false,
  saveUninitialized: true
}), indexRouter);

app.use(cors());
// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'jade');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

app.use('/startActivity', startActivityRouter);
app.use('/company', companyRouter);
app.use('/member', memberRouter);
//Nick
app.use('/pro',commentRouter);

app.use('/eb', porListRouter);
app.use('/map', mapRouter);
app.use('/article', articleRouter);
app.use('/', indexRouter); // kai
app.use('/api', membersRouter); // kai

// catch 404 and forward to error handler
app.use(function(req, res, next) {
  next(createError(404));
});

// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});
// app.listen(4000, ()=>
//     console.log(`Server is listening on port 4000`)
// )

// 登入攔截器 (express interceptors)
var whitePage = ['/api/login','/api/logout']; // 排除 login, logout API
app.use(function(req, res, next){
  var url = req.originalUrl;
  if(whitePage.indexOf(url)>-1){ //如果 whitePage 存在請求的 url
    next();
  } else if (req.session.isLogin) {
    next();
  } else {
    return res.redirect("login");
  }
});

module.exports = app;
