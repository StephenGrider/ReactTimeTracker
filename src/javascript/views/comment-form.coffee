React = require 'react'

module.exports = React.createClass
  render: ->
    <div className="commentForm" onSubmit={this.onSubmit}>
      <input type="text" placeholder="Name" ref="author" />
      <input type="text" placeholder="Comment" ref="text" />
      <input type="submit" value="Post" />
    </div>

  onSubmit: (e) ->
    e.preventDefault()

    author = @refs.author.getDOMNode().value.trim()
    text = @refs.text.getDOMNode().value.trim()

    return unless author && text

    @refs.author.getDOMNode.value = ''
    @refs.text.getDOMNode.value = ''

    @state.commentsCollection.push author: author, text: text
