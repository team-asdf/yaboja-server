var Sequelize = require('sequelize');
var express = require('express');
var cors = require('cors');
let {PythonShell} = require('python-shell')
var models = require('../../../models/');
var router = express.Router();
const request = require('request');

router.use(cors());

router.post('/newuser', function(req, res) {
    let options = {
        mode: 'text',
        pythonPath: '',
        pythonOptions: ['-u'],
        scriptPath: '/Users/keyakoto/Workspace/dev/yaboja-server/routes/api/v1/',
        args: [req.body.userid]
    };

    PythonShell.run('./get_info.py', options, function (err, results) {
        if (err) throw err;
        res.json({"check": true});
    });
});

router.post('/', function(req, res) {
    models.users.count({
        where: {userid: req.body.userid},
        raw: true
    }).then(function(result) {
        if (result == 0) {
            models.users.create({
                userid: req.body.userid,
                extract_language: req.body.extract_language,
                keyword: req.body.keyword
            }).then(function(result) {
                res.json({"check": true});
            })
        } else if (result >= 1) {
            res.json({"check": false});
        }
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
