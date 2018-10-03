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

var indexRouter = require('./routes/index');

var app = express();

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());

app.use('/', indexRouter);

module.exports = app;
