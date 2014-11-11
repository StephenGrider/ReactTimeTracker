React = require 'react'
BackboneReactComponent = require 'backbone-react-component'

module.exports = React.createClass
  mixins: [BackboneReactComponent]
  render: ->
    <div>
      <h2>What do you want to track?</h2>
      <input type="text" placeholder="autocompleter" />
      <input type="text" placeholder="Additional notes (optional)" />
      <input type="checkbox" />
      $<input type="text" />
    </div>
