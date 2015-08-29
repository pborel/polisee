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
