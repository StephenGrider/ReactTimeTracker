React = require 'react'
BackboneReactComponent = require 'backbone-react-component'

module.exports = React.createClass
  mixins: [BackboneReactComponent]
  render: ->
    <div className="setup">
      <h2>What do you want to track?</h2>
      <input type="text" className="autocompleter" placeholder="autocompleter" />
      <input type="text" className="notes" placeholder="Additional notes (optional)" />

      <div className="billable">
        <span>Billable?</span>
        <input type="checkbox"/>
      </div>

      <div className="rate">
        <span className="prefix">$</span>
        <input type="text" placeholder="Rate" />
      </div>
    </div>
