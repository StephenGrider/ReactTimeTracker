View =  require './views/comment-box'
React = require 'react'
Backbone = require 'backbone'

commentsCollection = new Backbone.Collection()

window.c = commentsCollection

React.render(
  <View collection={commentsCollection}/>,
  document.getElementById('content')
);
