var Sequelize = require('sequelize');
var express = require('express');
var models = require('../models/');
var router = express.Router();

router.get('/api/v1/get_contents', function(req, res) {
	res.header("Access-Control-Allow-Origin", "*");
	models.contents.findAll().then(full => res.json(full))
});

router.post('/api/v1/find', function(req, res) {
	res.header("Access-Control-Allow-Origin", "*");
	var search = req.body.search;
	models.contents.findAll({
		where: {title: {like: '%' + search + '%'}}
	}).then(data => res.json(data));	
});

router.get('/api/v1/get_lang', function(req,res) {
	res.header("Access-Control-Allow-Origin", "*");
    models.langlist.findAll().then(lang => res.json(lang))
});

module.exports = router;
