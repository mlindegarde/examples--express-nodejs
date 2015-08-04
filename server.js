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

require('./routes/home')(app);
require('./routes/recipe')(app);

var port = process.env.PORT || 3000;

app.listen(port);