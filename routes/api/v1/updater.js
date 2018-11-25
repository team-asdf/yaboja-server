var Sequelize = require('sequelize');
var express = require('express');
var models = require('../../../models/');
var router = express.Router();
const request = require('request');

router.post('/:idx', function(req, res) {
    res.header("Access-Control-Allow-Origin", "*");
    models.contents.update({
        cnt: Sequelize.literal("cnt + 1")}, {
        where: {idx: req.params.idx}
    }).then(function(result) {
        models.archive.create({
            userid: req.body.userid,
            content_idx: req.params.idx
        }).then(function(result) {
            res.json({"check": true});
        });
    });
});

module.exports = router;