React = require 'react'
BackboneReactComponent = require 'backbone-react-component'

module.exports = React.createClass
  mixins: [BackboneReactComponent]
  
  componentWillMount: ->
    @getModel().on 'clear', @forceUpdate
    
  render: ->
    <div className="setup">
      <h2>What do you want to track?</h2>
      
      <input type="text" className="autocompleter" placeholder="autocompleter" />
      <input 
        value={@props.notes}
        type="text" 
        className="notes"
        placeholder="Additional notes (optional)"
        onChange={@onNotesChange}
      />

      <div className="billable">
        <span>Billable?</span>
        <input
          checked={@props.billable}
          type="checkbox" 
          onChange={@onBillableChange} 
        />
      </div>

      <div className="rate">
        <span className="prefix">$</span>
        <input
          value={@props.rate}
          type="text" 
          placeholder="Rate" 
          onBlur={@onRateBlur} 
        />
      </div>
    </div>
    
  onNotesChange: (e) ->
    @getModel().set('notes', e.target.value)
    
  onBillableChange: (e) ->
    if e.target.value then @getModel().set('billable', true)  else @getModel().set('billable', false) 
    
  onRateBlur: (e) ->
    e.target.value = val = parseFloat e.target.value.replace(/[^0-9^.]/gi, '') || 0
    @getModel().set('rate', val)
