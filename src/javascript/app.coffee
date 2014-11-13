View =  require './views/time-tracker'
React = require 'react'
Backbone = require 'backbone'
TimeEntry = require './models/time-entry'


timeEntry = new TimeEntry()

React.render(
  <View model={timeEntry}/>,
  document.getElementById('content')
)
