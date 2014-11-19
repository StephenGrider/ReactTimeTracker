React = require 'react'
TimeSetup = require './time-setup'
TimeAdd = require './time-add'
BackboneReactComponent = require 'backbone-react-component'
LocalStorageAdapter = require './mixins/local-storage'
TimeEntry = require '../models/time-entry'

module.exports = React.createClass
  mixins: [BackboneReactComponent, ]
  
  componentWillMount: ->
    attrs = LocalStorageAdaptor.get('time')
    @timeEntry = new TimeEntry attrs
    
  render: ->
    <div className="tracker">
      <h1>Track Time</h1>
      <TimeSetup model={@timeEntry} />
      <TimeAdd model={@timeEntry} />
    </div>
