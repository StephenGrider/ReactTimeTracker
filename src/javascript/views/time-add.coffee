React = require 'react'
BackboneReactComponent = require 'backbone-react-component'
DatePicker = require('react-widgets').DateTimePicker
TimeInput = require './components/time-input'
Timer = require './components/timer'
LocalStorageAdapter = require './mixins/local-storage'

module.exports = React.createClass
  mixins: [BackboneReactComponent, LocalStorageAdapter]
  
  render: ->
    <div className="add">
      <h2>Use the Timer</h2>
      <Timer />
      <h2>Or add time manually</h2>
      <h5>Select a date:</h5>
      <DatePicker
        className="datepicker"
        time=false
        format='MMM dd yyyy'
        duration=0
        onChange={@onDateChange}
      />

      <TimeInput />
      <button onClick={@handleSaveClick}>Save</button>
      <button onClick={@handleResetClick}>Reset</button>
    </div>
    
  handleSaveClick: ->
    collection = @getCollection()
    collection.add(@getModel())
    @getModel().clear()
    @setToStorage 'time', collection.toJSON()
    
    window.alert 'Time Successfully Logged'
    
  handleResetClick: ->
    @getModel().clear()

  onDateChange: (date) ->
    if date
      @getModel().set('date', date.toDateString())