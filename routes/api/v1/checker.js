var Sequelize = require('sequelize');
var express = require('express');
var cors = require('cors');
var models = require('../../../models/');
var router = express.Router();
const request = require('request');

router.use(cors());

router.post('/', function(req, res) {
    var userid = req.body.userid;

    var options = {
        url: 'https://api.github.com/users/' + userid,
        headers: {
            'User-Agent': 'yaboja',
            'Content-Type': 'application/x-www-form-urlencoded'
        },
    };

    request(options, function (error, response, body) {
        if (response.statusCode == 200) {
            var result = JSON.parse(body);
            result.check = true;
            res.send(result);
        } else {
            var result = JSON.parse(body);
            result.check = false;
            res.send(result);
        }
    });
});

module.exports = router;