React = require 'react'

module.exports = React.createClass
  render: ->
    <div className="comment">
      <h2 className="author">
        {this.props.author}
      </h2>
      {this.props.children}
    </div>
