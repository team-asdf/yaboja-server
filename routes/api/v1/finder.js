var Sequelize = require('sequelize');
var express = require('express');
var cors = require('cors');
var models = require('../../../models/');
var router = express.Router();
const request = require('request');

router.use(cors());

router.post('/', function(req, res) {
    var search = req.body.search;
    models.contents.findAll({
        where: {title: {like: '%' + search + '%'}}
    }).then(data => res.json(data));
});

module.exports = router;