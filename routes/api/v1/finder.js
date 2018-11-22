var Sequelize = require('sequelize');
var express = require('express');
var models = require('../../../models/');
var router = express.Router();
const request = require('request');

router.post('/', function(req, res) {
    res.header("Access-Control-Allow-Origin", "*");
    var search = req.body.search;
    models.contents.findAll({
        where: {title: {like: '%' + search + '%'}}
    }).then(data => res.json(data));
});

module.exports = router;