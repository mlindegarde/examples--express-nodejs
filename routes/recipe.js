var recipeController = require('../controllers/recipe')

module.exports = function(app){
    app.get('/recipes/:id', function(req, res){
        recipeController.index(req, res);
    })
}