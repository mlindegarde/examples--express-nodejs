var homeController = require('../controllers/home')

module.exports = function(app){
    app.get('/', function(req, res){
        homeController.index(req, res);
    });

    app.get('/about', function(req, res){
        homeController.about(req, res);
    });

    app.get('/contact', function(req, res){
        homeController.contact(req, res);
    })
}