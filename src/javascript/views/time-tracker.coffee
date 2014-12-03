React = require 'react'
TimeSetup = require './time-setup'
TimeAdd = require './time-add'
BackboneReactComponent = require 'backbone-react-component'
Backbone = require 'backbone'
TimeIndex = require './index/time-index'

module.exports = React.createClass
  mixins: [BackboneReactComponent]

  componentWillMount: ->
    @timeEntry = new Backbone.Model()
    window.a = @timeEntry
    # @timeEntry.on 'change', => @forceUpdate()
    
  render: ->
    <div className="tracker">
      <h1>Track Time</h1>
      <TimeSetup model={@timeEntry} />
      <TimeAdd model={@timeEntry} />
      <TimeIndex collection={@getCollection().timeEntries} />
    </div>
