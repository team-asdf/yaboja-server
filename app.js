let models = require("./models/index.js");

models.sequelize.sync().then( () => {
  console.log("DB 연결 성공")
}).catch(err => {
  console.log("연결 실패")
  console.log(err)
})

var express = require('express');
var bodyParser = require('body-parser');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');
var sequelize = require('sequelize');
var mysql = require('mysql2');

var checker = require('./routes/api/v1/checker');
var contents = require('./routes/api/v1/contents');
var finder = require('./routes/api/v1/finder');
var languages = require('./routes/api/v1/languages');
var signup = require('./routes/api/v1/signup');
var updater = require('./routes/api/v1/updater');
var opensources = require('./routes/api/v1/opensources');

var app = express();

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());

app.use('/api/v1/checker', checker);
app.use('/api/v1/contents', contents);
app.use('/api/v1/finder', finder);
app.use('/api/v1/languages', languages);
app.use('/api/v1/signup', signup);
app.use('/api/v1/updater', updater);
app.use('/api/v1/opensources', opensources);

module.exports = app;