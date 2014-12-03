React = require 'react'
BackboneReactComponent = require 'backbone-react-component'
Select = require 'react-select'

module.exports = React.createClass
  mixins: [BackboneReactComponent]
  
  render: ->
    selectOptions = @getCollection().workspaces.map((w) -> value: w.cid, label: w.get('title'))
    
    <div className="setup col-md-6 row">
      <h3>What do you want to track?</h3>
      
      <Select
        options={selectOptions}
        onChange={@onSelectChange}
      />
      <br />
      <div className="row">
        <div className="col-md-4">
          <input
            value={@props.notes}
            type="text" 
            className="notes"
            placeholder="Additional notes (optional)"
            onChange={@onNotesChange}
          />
        </div>

        <div className="col-md-3">
          <span>Billable?</span>
          <input
            type="checkbox" 
            onChange={@onBillableChange} 
          />
        </div>

        <div className="col-md-4">
          <input
            value={@props.rate}
            type="text" 
            placeholder="Rate ($)" 
            onChange={@onRateBlur} 
          />
        </div>
      </div>
    </div>
    
  onNotesChange: (e) ->
    @getModel().set('notes', e.target.value)
    
  onBillableChange: (e) ->
    if e.target.checked then @getModel().set('billable', true)  else @getModel().set('billable', false) 
    
  onRateBlur: (e) ->
    val = e.target.value.replace(/[^\d.-]/g, '') || 0
    @getModel().set('rate', val)

  onSelectChange: (cid) ->
    @getModel().set('workspace_cid', cid)