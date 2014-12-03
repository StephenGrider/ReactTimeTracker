React = require 'react'
BackboneReactComponent = require 'backbone-react-component'

module.exports = React.createClass
  mixins: [BackboneReactComponent]
  
  render: ->
    workspaceTitle = @getCollection().workspaces.get(@props.workspace_cid)?.get('title')

    <tr>
      <td>{workspaceTitle}</td>
      <td>{@props.notes || '-'}</td>
      <td>{if @props.billable then 'Yes' else 'No'}</td>
      <td>{@props.rate || '-'}</td>
      <td>{@props.duration || '-'}</td>
    </tr>
