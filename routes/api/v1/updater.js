var Sequelize = require('sequelize');
var express = require('express');
var models = require('../../../models/');
var router = express.Router();
const request = require('request');

router.get('/', function(req, res) {
    res.header("Access-Control-Allow-Origin", "*");
    res.json({'test': true});
});

router.post('/:idx', function(req, res) {
    res.header("Access-Control-Allow-Origin", "*");
    models.contents.update({
        cnt: Sequelize.literal("cnt + 1")}, {
        where: {idx: req.params.idx}
    }).then(res.json({'check': true}));
});

module.exports = router;