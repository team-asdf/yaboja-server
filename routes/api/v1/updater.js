var Sequelize = require('sequelize');
var express = require('express');
var cors = require('cors');
var models = require('../../../models/');
var router = express.Router();
const request = require('request');

router.use(cors());

router.post('/:idx', function(req, res) {
    models.contents.update({
        cnt: Sequelize.literal("cnt + 1")}, {
        where: {idx: req.params.idx}
    }).then(function(result) {
        models.archives.create({
            userid: req.body.userid,
            content_idx: req.params.idx
        }).then(function(result) {
            res.json({"check": true});
        });
    });
});

router.post('/:username/:idx', function(req, res) {
    models.archives.destroy({
        where: {userid: req.params.username, content_idx: req.params.idx}
    }).then(function(result) {
        res.json({"check": true});
    }).catch(function(err) {
        res.json({"check": false});
    });
});

module.exports = router;