React = require 'react'
BackboneReactComponent = require 'backbone-react-component'
DatePicker = require('react-widgets').DateTimePicker
Timer = require './components/timer'

module.exports = React.createClass
  mixins: [BackboneReactComponent]
  render: ->
    <div className="add">
      <h2>Use the Timer</h2>
      <Timer />
      <h2>Or add time manually</h2>
      <DatePicker
        className="datepicker"
        time=false
        format='MMM dd yyyy'
        duration=0
      />

      <input type="text" placeholder="duration" />
      <button>Save</button>
    </div>
