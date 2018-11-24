var Sequelize = require('sequelize');
var express = require('express');
var models = require('../../../models/');
var router = express.Router();
const request = require('request');

router.post('/', function(req, res) {
    res.header("Access-Control-Allow-Origin", "*");
    models.users.create({
        userid: req.body.userid,
        extract_language: req.body.extract_language,
        keyword: req.body.keyword
    }).then(result => res.json({"check": true}))
});

router.post('/:userid', function(req, res) {
    res.header("Access-Control-Allow-Origin", "*");
    var condition = {where: {userid: req.params.userid}};
    var values = {keyword: req.body.keyword};
    models.users.update(values, condition).then(function(result) {
        res.json({'update': true});
    }).catch(function(err) {
        res.json({'update': false});
    });
});

module.exports = router;