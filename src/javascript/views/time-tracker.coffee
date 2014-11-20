React = require 'react'
TimeSetup = require './time-setup'
TimeAdd = require './time-add'
BackboneReactComponent = require 'backbone-react-component'
Backbone = require 'backbone'
TimeEntry = require '../models/time-entry'
TimeIndex = require './time-index'

module.exports = React.createClass
  mixins: [BackboneReactComponent]
  
  componentWillMount: ->
    @timeEntry = new TimeEntry
    
  render: ->
    <div className="tracker">
      <h1>Track Time</h1>
      <TimeSetup model={@timeEntry} />
      <TimeAdd model={@timeEntry} />
      <TimeIndex collection={@timeIndex} />
    </div>
