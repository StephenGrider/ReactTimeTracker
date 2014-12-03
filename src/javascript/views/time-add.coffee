React = require 'react'
BackboneReactComponent = require 'backbone-react-component'
DatePicker = require('react-widgets').DateTimePicker
TimeInput = require './components/time-input'
Timer = require './components/timer'
LocalStorageAdapter = require './mixins/local-storage'

module.exports = React.createClass
  mixins: [BackboneReactComponent, LocalStorageAdapter]
  
  render: ->
    <div className="add col-md-6">
      <h3>Use the Timer</h3>
      <Timer />
      <h3>Or add time manually</h3>
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
    collection = @getCollection().timeEntries
    collection.add(@getModel())
    @setToStorage 'time', collection.toJSON()
    
    window.alert 'Time Successfully Logged'
    
  handleResetClick: ->
    @getModel().clear()

  onDateChange: (date) ->
    if date
      @getModel().set('date', date.toDateString())