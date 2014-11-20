BackboneReactComponent = require 'backbone-react-component'
React = require 'react'
TimeEntry = require './time-entry'

module.exports = React.createClass
  mixins: [BackboneReactComponent]
  render: ->
    entries = @getCollection().map (entry) ->
      <TimeEntry model={entry} />
      
    <ul>
      {entries}
    </ul>
    