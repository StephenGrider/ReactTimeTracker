React = require 'react'

module.exports = React.createClass
  render: ->
    <div>
      {@state.time?.toFixed(1)}
    </div>

  getInitialState: ->
    timeStart: new Date()

  componentDidMount: ->
    @timer = setInterval(@tick, 100)

  componentDidUnmount: ->
    window.clearInterval(@timer)

  tick: ->
    elapsed = (new Date() - @state.timeStart) / 1000
    @setState(time: elapsed)
