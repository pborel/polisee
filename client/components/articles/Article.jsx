var React = require('react');
var RouteHandler = require('react-router').RouteHandler;

module.exports = React.createClass({
  render: function() {
    return (
      <div>
        {this.props.children}
      </div>
      )
  }
});
