var ArticleContainer = React.createClass({
  render: function(){
    return (
      <div>
        <SearchBar />
        <ButtonTabs />
        <ArticleBox url={this.props.url}/>
        <hr/>
      </div>
    )
  }
});


var ArticleBox = React.createClass({
  getInitialState: function() {
    return {data: []};
  },

  loadRepresentativesFromServer: function() {
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
        <Article key={article.bill_id}>
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

// --------------- SEARCH BAR ---------------------

var SearchBar = React.createClass({
  render: function(){
    return (
      <div>
        <input type="text" placeholder="search by bill or topic"></input>
      </div>
    )
  }
});

// --------------- TABS ---------------------

var ButtonTabs = React.createClass({
  render: function(){
    return (
      <div>
      <UpcomingTab />
      <FollowedTab />
      <RelevantTab />
      </div>
      )
  }
});

var UpcomingTab = React.createClass({
  render: function(){
    return (
      <span>
      <a href="#">Upcomming</a>
      </span>
      )
  }
});

var FollowedTab = React.createClass({
  render: function(){
    return (
      <span>
      <a href="#">Followed</a>
      </span>
      )
  }
});

var RelevantTab = React.createClass({
  render: function(){
    return(
      <span>
      <a href="#">Relevant</a>
      </span>
      )
  }
});

// ------------- REPRESENTATIVES --------------

var RepresentativeContainer = React.createClass({
  render: function() {
    return (
      <div>
        <SearchBar />
        <RepresentativeBox url={this.props.url} image_url={this.props.image_url} />
      </div>
    )
  }
});

var RepresentativeBox = React.createClass({
  getInitialState: function() {
    return {data: []};
  },

  loadRepresentativesFromServer: function() {
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

  loadImagesFromServer: function() {
    $.ajax({
      url: this.props.image_url,
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
    this.loadRepresentativesFromServer();
    this.loadImagesFromServer();
  },

  render: function() {
    return (
      <RepresentativesList data={this.state.data} />
    )
  }
});

var RepresentativesList = React.createClass({
  render: function() {
    var representativeNodes = this.props.data.map(function(representative) {
      return (
        <Representative key={representative.id}>
          <a href="#">{representative.first_name} {representative.last_name}</a>
          <span> -- <a href="#">{representative.twitter_id}</a> </span>
        </Representative>
        )
    });

    return (
      <div>
       {representativeNodes}
      </div>
    );
  }
});

var Representative = React.createClass({
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
  document.getElementById('bills')
)

React.render(
  <RepresentativeContainer url="http://localhost:3000/legislators.json" image_url="" />,
  document.getElementById('representatives')
)

// React.render(
//   <App url="http://localhost:3000/bills.json" />,
//   document.getElementById('content')
// )

