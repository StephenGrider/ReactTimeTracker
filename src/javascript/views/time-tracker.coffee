React = require 'react'
TimeSetup = require './time-setup'
TimeAdd = require './time-add'
BackboneReactComponent = require 'backbone-react-component'
LocalStorageAdapter = require './mixins/local-storage'
TimeEntry = require '../models/time-entry'

module.exports = React.createClass
  mixins: [BackboneReactComponent, LocalStorageAdapter]
  
  componentWillMount: ->
    savedAttrs = @getFromStorage('time')
    @timeEntry = new TimeEntry savedAttrs
    @timeEntry.set('notes', 'asdf')
    
  render: ->
    <div className="tracker">
      <h1>Track Time</h1>
      <TimeSetup model={@timeEntry} />
      <TimeAdd model={@timeEntry} />
    </div>
