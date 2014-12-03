React = require 'react'
TimeFormatter = require './../mixins/time-formatter'
BackboneReactComponent = require 'backbone-react-component'

module.exports = React.createClass
  mixins: [TimeFormatter, BackboneReactComponent]
  render: ->
    if @state.duration == 0 then duration = null else @state.duration
    
    <input
      ref="input"
      placeholder="Time (1h 30m)"
      value={duration}
      onChange={@handleInputChange}
    />

  getInitialState: ->
    duration: 0

  componentDidMount: ->
    @refs.input.getDOMNode().value = ''

  handleInputChange: ->
    node = @refs.input.getDOMNode()
    @setState(duration: @formatTime(node.value))
    @getModel().set('duration', @formatTime(node.value))
