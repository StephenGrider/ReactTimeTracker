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
      
      <div className="row">
        <div className="col-md-6">
          <DatePicker
            className="datepicker"
            time=false
            format='MMM dd yyyy'
            duration=0
            onChange={@onDateChange}
          />
        </div>
        
        <div className="col-md-6">
          <TimeInput />
        </div>
      </div>
      <br />
      <button onClick={@handleSaveClick} className="btn btn-primary">Save</button>
    </div>
    
  handleSaveClick: ->
    collection = @getCollection().timeEntries
    collection.add(@getModel())
    @setToStorage 'time', collection.toJSON()
    
    window.alert 'Time Successfully Logged'

  onDateChange: (date) ->
    if date
      @getModel().set('date', date.toDateString())