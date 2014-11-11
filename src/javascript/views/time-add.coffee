React = require 'react'
BackboneReactComponent = require 'backbone-react-component'

module.exports = React.createClass
  mixins: [BackboneReactComponent]
  render: ->
    <div>
      <h2>Use the Timer</h2>
      <div>timer</div>
      <h2>Or add time manually</h2>
      <input type="text" placeholder="datepicker" />
      <input type="text" placeholder="duration" />

      <button>Save</button>
    </div>
