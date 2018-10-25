var Sequelize = require('sequelize');
var express = require('express');
var models = require('../models/');
var router = express.Router();
const request = require('request');

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

router.post('/api/v1/usercheck', function(req, res) {
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
