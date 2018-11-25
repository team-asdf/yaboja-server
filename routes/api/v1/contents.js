var Sequelize = require('sequelize');
var express = require('express');
var cors = require('cors');
var models = require('../../../models/');
var router = express.Router();
const request = require('request');

router.use(cors());

router.get("/keyword/:username", function(req, res) {
    models.users.findAll({
        where: {userid: req.params.username},
        attributes: ["extract_language", "keyword"]
    }).then(function(result) {
        res.json(result);
    })
});

router.get("/archives/:username/:page", function(req, res) {
    let limit = 5;
    let offset = 0;
    models.archives.findAll({
        where: {userid: req.params.username},
        raw: true,
        attributes: ['content_idx'],
    }).then(function (result) {
        var queries = [];
        var idxer_arr = [];
        for (i = 0; i < result.length; i++)
        {
            idxer_arr.push(result[i].content_idx)
        }
        models.contents.findAndCountAll()
            .then((data) => {
                let page = req.params.page;
                let pages = Math.ceil(data.count / limit);
                offset = limit * (page - 1);
                for (i = 0; i < idxer_arr.length; i++) {
                    queries.push({idx: idxer_arr[i]});
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

router.get('/:page', function(req, res) {
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
                $sort: {id : 1},
                attributes: ['idx', 'title', 'content', 'url', 'cnt', 'source', 'keyword', 'image', 'createdAt']
            }).then(function(result) {
                res.json(result)
            });
        });
});

router.get("/:username/:page", function(req, res) {
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