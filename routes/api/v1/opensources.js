var Sequelize = require('sequelize');
var express = require('express');
var cors = require('cors');
var models = require('../../../models/');
var router = express.Router();
const request = require('request');

router.use(cors());

router.get('/', function(req,res) {
    models.opensources.findAll().then(result => res.json(result))
});

module.exports = router;
