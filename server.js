var express = require('express'),
  app = express(),
  port = process.env.PORT || 9000
  bodyParser = require('body-parser'),
  cache = require('memory-cache');

app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());
app.set('cache', cache); 


var routes = require('./api/routes/mydocRoutes.js'); //importing route
routes(app); //register the route

app.listen(port);

console.log('my-documents RESTful API server started on: ' + port);

