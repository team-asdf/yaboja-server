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

router.get("/:username/:page", function(req, res) {
    res.header("Access-Control-Allow-Origin", "*");
    let limit = 5;
    let offset = 0;
    models.users.findAll({
        where: {userid: req.params.username},
        raw: true
    }).then(function(result) {
        var keyword = result[0].keyword;
        var queries = [];
        var keyword_arr = [];
        var keyword_split = keyword.split(',');
        for (var i in keyword_split)
        {
            keyword_arr.push(keyword_split[i]);
        }
        models.contents.findAndCountAll()
            .then((data) => {
                let page = req.params.page;
                let pages = Math.ceil(data.count / limit);
                offset = limit * (page - 1);
                for (i = 0; i < keyword_arr.length; i++) {
                    queries.push({keyword: {like: '%' + keyword_arr[i] + '%'}});
                }
                models.contents.findAll({
                    limit: limit,
                    offset: offset,
                    $sort: {id : 1},
                    where: {
                        $or : queries
                    },
                    raw: true
                }).then(results => {
                    res.json(results);
                })
            });
    });
});

module.exports = router;