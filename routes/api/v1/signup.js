var Sequelize = require('sequelize');
var express = require('express');
var models = require('../../../models/');
var router = express.Router();
const request = require('request');

router.post('/', function(req, res) {
    res.header("Access-Control-Allow-Origin", "*");
    models.user.create({
        userid: req.body.userid,
        extract_language: req.body.extract_language,
        interested_language: req.body.interested_language
    }).then(result => res.json({"check": true}))
});

module.exports = router;