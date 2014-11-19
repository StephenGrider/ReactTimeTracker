React = require 'react'
BackboneReactComponent = require 'backbone-react-component'

module.exports = React.createClass
  mixins: [BackboneReactComponent]
  render: ->
    <div className="setup">
      <h2>What do you want to track?</h2>
      
      <input type="text" className="autocompleter" placeholder="autocompleter" />
      <input 
        type="text" 
        className="notes" 
        placeholder="Additional notes (optional)"
        onChange={@onNotesChange}
      />

      <div className="billable">
        <span>Billable?</span>
        <input type="checkbox" onChange={@onBillableChange} />
      </div>

      <div className="rate">
        <span className="prefix">$</span>
        <input type="text" placeholder="Rate" onChange={@onRateChange} />
      </div>
    </div>
    
  onNotesChange: (e) ->
    @getModel().set('notes', e.target.value)
    
  onBillableChange: (e) ->
    if e.target.value then @getModel().set('billable', true)  else @getModel().set('billable', false) 
    
  onRateChange: (e) ->
    @getModel().set('rate', e.target.value)
