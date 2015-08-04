module.exports = {
    index: function(req, res){
        res.render('home/index', {title: 'Home'});
    },

    about: function(req, res){
        res.render('home/about', {title: 'About'});
    },

    contact: function(req, res){
        res.render('home/contact', {title: 'Contact'});
    }
}
