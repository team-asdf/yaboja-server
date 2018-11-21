var Sequelize = require('sequelize');
var express = require('express');
var models = require('../../../models/');
var router = express.Router();
const request = require('request');

router.get('/:page', function(req, res) {
    res.header("Access-Control-Allow-Origin", "*");
    let limit = 5;
    let offset = 0;
    models.contents.findAndCountAll()
        .then((data) => {
            let page = req.params.page;
            let pages = Math.ceil(data.count / limit);
            offset = limit * (page - 1);
            models.contents.findAll({
                limit: limit,
                offset: offset,
                $sort: {id : 1}
            }).then(full => res.json(full))
        });
});

module.exports = router;