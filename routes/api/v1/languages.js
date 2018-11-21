var Sequelize = require('sequelize');
var express = require('express');
var models = require('../../../models/');
var router = express.Router();
const request = require('request');

router.get('/', function(req,res) {
    res.header("Access-Control-Allow-Origin", "*");
    models.langlist.findAll().then(lang => res.json(lang))
});

module.exports = router;