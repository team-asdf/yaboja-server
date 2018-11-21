var Sequelize = require('sequelize');
var express = require('express');
var models = require('../../../models/');
var router = express.Router();
const request = require('request');

router.post('/', function(req, res) {
    res.header("Access-Control-Allow-Origin", "*");
    var userid = req.body.userid;

    var options = {
        url: 'https://api.github.com/users/' + userid,
        headers: {
            'User-Agent': 'yaboja'
        }
    };

    request(options, function (error, response, body) {
        if (response.statusCode == 200) {
            res.json({'check': true});
        } else {
            res.json({'check': false});
        }
    });
});

module.exports = router;