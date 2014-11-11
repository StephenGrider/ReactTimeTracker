View =  require './views/time-tracker'
React = require 'react'
Backbone = require 'backbone'

commentsCollection = new Backbone.Collection()

React.render(
  <View collection={commentsCollection}/>,
  document.getElementById('content')
)
