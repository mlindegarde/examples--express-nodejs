var express = require('express');
var app = express();
var swig = require('swig');
var bodyParser = require('body-parser');

app.engine('html', swig.renderFile);
app.set('view engine', 'html');
app.set('views', __dirname + '/views');
swig.setDefaults({cache: false});

app.use(bodyParser.urlencoded({extended: false}));

app.use('/public', express.static(__dirname + '/public'));


app.get('/', function(req, res){
  res.render('index', {title: 'Home'});
})

app.get('/about', function(req, res){
  res.render('about', {title: 'About'})
})

var port = process.env.PORT || 3000;

app.listen(port);