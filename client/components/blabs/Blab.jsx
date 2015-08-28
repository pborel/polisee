var React = require('react');

module.exports = React.createClass({
  render: function() {
    return (
      <li className="blab">
        <span className="blab-author">{this.props.author}: </span>
        <span className="blab-text">{this.props.content}</span>
      </li>
    );
  }
});
