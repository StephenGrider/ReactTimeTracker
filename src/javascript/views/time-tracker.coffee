React = require 'react'
TimeSetup = require './time-setup'
TimeAdd = require './time-add'
BackboneReactComponent = require 'backbone-react-component'

module.exports = React.createClass
  mixins: [BackboneReactComponent]
  render: ->
    <div className="tracker">
      <h1>Track Time</h1>
      <TimeSetup />
      <TimeAdd />
    </div>
