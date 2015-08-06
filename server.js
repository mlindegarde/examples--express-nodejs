var express = require('express');
var app = express();
var swig = require('swig');
var extras = require('swig-extras');
var bodyParser = require('body-parser');

app.engine('swig', swig.renderFile);
app.set('view engine', 'swig');
app.set('views', __dirname + '/views');
extras.useFilter(swig, 'truncate');

swig.setDefaults({cache: false});

app.use(bodyParser.urlencoded({extended: false}));
app.use(bodyParser.json());

app.use('/public', express.static(__dirname + '/public'));

require('./routes/home')(app);
require('./routes/recipe')(app);

var port = process.env.PORT || 3000;

app.listen(port);