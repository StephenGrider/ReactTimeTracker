BackboneReactComponent = require 'backbone-react-component'
React = require 'react'
TimeEntry = require './time-entry'

module.exports = React.createClass
  mixins: [BackboneReactComponent]
  render: ->
    entries = @getCollection().timeEntries.map (entry) ->
      <TimeEntry model={entry} />

    <table className="table">
      <tr>
        <th>Workspace</th>
        <th>Notes</th>
        <th>Billable</th>
        <th>Rate</th>
        <th>Duration</th>
      </tr>
      <tbody>
        {entries}
      </tbody>
    </table>
    