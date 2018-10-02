var Sequelize = require('sequelize');
var express = require('express');
var models = require('../models/');
var router = express.Router();

router.get('/api/v1/get_contents', function(req, res) {
	res.header("Access-Control-Allow-Origin", "*");
	models.contents.findAll().then(full => res.json(full))
});

module.exports = router;
