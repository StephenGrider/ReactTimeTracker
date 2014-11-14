React = require 'react'

module.exports = React.createClass
  render: ->
    <div>
      <div>{@state.elapsed?.toFixed(1)}</div>
      <button onClick={@handleTimerClick}>
        {if @state.paused then 'Start' else 'Stop'}
      </button>
      <button onClick={@handleResetClick}>
        Clear
      </button>
    </div>

  getInitialState: ->
    elapsed: 0
    elapsedPrevious: 0
    paused: true

  tick: ->
    elapsed = (new Date().getTime() - @state.timeStart) / 1000 + @state.elapsedPrevious
    @setState(elapsed: elapsed)

  handleTimerClick: ->
    if @state.paused
      @setState(timeStart: new Date().getTime())
      @timer = setInterval(@tick, 100)
    else
      window.clearInterval(@timer)
      @setState(elapsedPrevious: @state.elapsed)

    @setState(paused: !@state.paused)

  handleResetClick: ->
    window.clearInterval(@timer)
    @replaceState(@getInitialState())
