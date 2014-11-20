View =  require './views/time-tracker'
React = require 'react'
Backbone = require 'backbone'
LocalStorageAdapter = require './views/mixins/local-storage'

collection = new Backbone.Collection(LocalStorageAdapter.getFromStorage 'time')

React.render(
  <View collection={collection}/>,
  document.getElementById('content')
)
