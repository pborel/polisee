require('./assets/app.css');
require('./assets/menu.css');
require('./assets/blabs.css');

var React = require('react');
var Router = require('react-router');
var routes = require('./config/routes.jsx');

Router.run(routes, Router.HistoryLocation, function(Handler) {
  React.render(<Handler/>, document.body);
});
