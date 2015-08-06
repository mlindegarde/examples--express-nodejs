var colors = require('colors');
var sql = require('mssql');
var markdown = require('markdown').markdown;

var config = {
    user: 'family-recipe',
    password: 'e8y55VBZazTkYQkZ64sT',
    server: 'lepa8tu96q.database.windows.net',
    database: 'family-recipe',
    options:{
        encrypt: true
    }
}

module.exports = {
    index: function(req, res){
        var connection = new sql.Connection(config, function(err) {
            var request = new sql.Request(connection);

            request.query('SELECT * FROM Recipes;', function(err, recordset) {
                //console.log(recordset[0].name.green);
                res.render('recipes/index', {title: 'Recipes', model: recordset});
            });
        });
    },

    details: function(req, res){
        var connection = new sql.Connection(config, function(err) {
            var request = new sql.Request(connection);
            request.query('SELECT * FROM Recipes WHERE id='+req.params.id+';', function(err, recordset) {
                for(var i = 0; i < recordset.length; i++){
                    recordset[i].descriptionAsHTML = markdown.toHTML(recordset[i].description, 'Maruku');
                }

                res.render('recipes/details', {title: 'Recipes', model: recordset[0]});
            });
        });
    },

    update: function(req, res){
        var connection = new sql.Connection(config, function(err) {
            var request = new sql.Request(connection);

            request.input('name', req.body.name);
            request.input('description', req.body.description);
            request.input('id', req.params.id);

            request.query('UPDATE Recipes SET name = @name, description = @description WHERE id = @id;', function(err) {
                request.query('SELECT * FROM Recipes WHERE id='+req.params.id+';', function(err, recordset) {
                    for(var i = 0; i < recordset.length; i++){
                        recordset[i].descriptionAsHTML = markdown.toHTML(recordset[i].description, 'Maruku');
                    }

                    res.render('recipes/details', {title: 'Recipes', model: recordset[0]});
                });
            });
        });
    }
}