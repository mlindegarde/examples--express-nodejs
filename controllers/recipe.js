var colors = require('colors');

var sql = require('mssql');

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
                console.log(recordset[0].name.green);
            });
        });

        res.render('index', {title: 'Recipe'});
    }
}