

var ArticleContainer = React.createClass({
  render: function(){
    return (
      <div>
        <SearchBar />
        <ButtonTabs />
        <ArticleBox url={this.props.url}/>
      </div>
    )
  }
});

var ArticleBox = React.createClass({
  getInitialState: function() {
    return {data: []};
  },

  loadArticlesFromServer: function() {
    $.ajax({
      url: this.props.url,
      dataType: 'json',
      cache: false,
      success: function(data) {
        this.setState({data: data});
      }.bind(this),
      error: function(xhr, status, err) {
        console.error(this.props.url, status, err.toString());
      }.bind(this)
    });
  },
  componentDidMount: function() {
    this.loadArticlesFromServer();
  },

  render: function() {
    return (
      <div>
        <ArticlesList data={this.state.data} />
      </div>
      )
  }
});

 var ArticlesList = React.createClass({
  render: function() {
    var articleNodes = this.props.data.map(function(article) {
      var link = article.last_version.urls.html
      return (
        <Article>
          <a href={link}>{article.short_title}</a>
          <span> -- <a href="#">followButton</a> </span>
        </Article>
        )
    });

    return (
      <div>
       {articleNodes}
      </div>
      );
  }
});

 var Article = React.createClass({
  render: function() {
    return (
      <div>
        {this.props.children}
      </div>
      )
  }
});

React.render(
  <ArticleContainer url="http://localhost:3000/bills.json" />,
  document.getElementById('content')
)
