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
    
  render: ->
    <div className="tracker container-fluid">
      <h1>Track Time</h1>
      <div className="row">
        <TimeSetup model={@timeEntry} />    
        <TimeAdd model={@timeEntry} />
      </div>
      <TimeIndex collection={@getCollection()} />
    </div>