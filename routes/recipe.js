var recipeController = require('../controllers/recipes')

module.exports = function(app){
    app.get('/recipes', function(req, res){
        recipeController.index(req, res);
    });

    app.get('/recipes/:id', function(req, res){
        recipeController.details(req, res);
    });

    app.post('/recipes/:id', function(req, res){
        recipeController.update(req, res);
    })
};