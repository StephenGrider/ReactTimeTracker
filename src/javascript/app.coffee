View =  require './views/time-tracker'
React = require 'react'
Backbone = require 'backbone'
LocalStorageAdapter = require './views/mixins/local-storage'

workspace1 = new Backbone.Model(title: 'Feed the cat')
workspace2 = new Backbone.Model(title: 'Pet the cat')

timeEntries = new Backbone.Collection(LocalStorageAdapter.getFromStorage 'time')
workspaces = new Backbone.Collection([workspace1, workspace2])

React.render(
  <View collection={timeEntries: timeEntries, workspaces: workspaces}/>,
  document.getElementById('content')
)
