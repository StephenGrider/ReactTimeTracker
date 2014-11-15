React = require 'react'
TimeFormatter = require './../mixins/time-formatter'

module.exports = React.createClass
  mixins: [TimeFormatter]
  render: ->
    <input
      ref="input"
      placeholder="Time (1h 30m)"
      value={@state.duration}
      onChange={@handleInputBlur}
    />

  getInitialState: ->
    duration: 0

  componentDidMount: ->
    @refs.input.getDOMNode().value = ''

  handleInputBlur: ->
    node = @refs.input.getDOMNode()
    @setState(duration: @formatTime(node.value))
