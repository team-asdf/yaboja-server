var Sequelize = require('sequelize');
var express = require('express');
var cors = require('cors');
var models = require('../../../models/');
var router = express.Router();
const request = require('request');

router.use(cors());

router.post('/', function(req, res) {
    models.users.create({
        userid: req.body.userid,
        extract_language: req.body.extract_language,
        keyword: req.body.keyword
    }).then(function(result) {
        res.json({"check": true});
    }).then(function(err) {
        res.json({"check": false});
    });
});

router.post('/:userid', function(req, res) {
    var condition = {where: {userid: req.params.userid}};
    var values = {keyword: req.body.keyword};
    models.users.update(values, condition).then(function(result) {
        res.json({'update': true});
    }).catch(function(err) {
        res.json({'update': false});
    });
});

module.exports = router;