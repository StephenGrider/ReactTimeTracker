React = require 'react'
BackboneReactComponent = require 'backbone-react-component'
DatePicker = require('react-widgets').DateTimePicker

module.exports = React.createClass
  mixins: [BackboneReactComponent]
  render: ->
    <div>
      <h2>Use the Timer</h2>
      <div>timer</div>
      <h2>Or add time manually</h2>
      <input type="text" placeholder="duration" />
      <DatePicker
        className="datepicker"
        time=false
        format='MMM dd yyyy'
        duration=0
      />

      <button>Save</button>
    </div>
