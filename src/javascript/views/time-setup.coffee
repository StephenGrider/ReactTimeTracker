React = require 'react'
BackboneReactComponent = require 'backbone-react-component'
Tokenizer = require('react-typeahead').Tokenizer

module.exports = React.createClass
  mixins: [BackboneReactComponent]
    
  render: ->
    
    <div className="setup">
      <h2>What do you want to track?</h2>
      
      <Tokenizer />
      
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
          onChange={@onRateBlur} 
        />
      </div>
    </div>
    
  onNotesChange: (e) ->
    @getModel().set('notes', e.target.value)
    
  onBillableChange: (e) ->
    if e.target.checked then @getModel().set('billable', true)  else @getModel().set('billable', false) 
    
  onRateBlur: (e) ->
    val = e.target.value.replace(/[^\d.-]/g, '') || 0
    @getModel().set('rate', val)
