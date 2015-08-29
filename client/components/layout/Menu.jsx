var React = require('react');
var Router = require('react-router');
var Link = Router.Link;

module.exports = React.createClass({
  handleSignOutLink: function() {
    sessionStorage.setItem('jwt','');
    location = '/';
  },
  render: function() {
    if (this.props.signedIn) {
      var signingLink = <li><span onClick={this.handleSignOutLink}>Sign Out</span></li>;
    } else {
      var signingLink = <li><a href={this.props.origin + '/request_token'}>Sign In</a></li>;
    }

    return (
      <nav>
        <span id="menu-link" onClick={this.props.sendMenuClick}><span></span></span>
        <div className="nav-wrapper">
          <a href="#" className="brand-logo">Blabs</a>
          <ul id="nav" className="right hide-on-med-and-down">
            <li><Link to="blabs">Blabs</Link></li>
            <li><Link to="about">About</Link></li>
            {signingLink}
          </ul>
        </div>
      </nav>
    );
  }
});
