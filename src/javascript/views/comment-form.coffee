React = require 'react'
BackboneReactComponent = require 'backbone-react-component'

module.exports = React.createClass
  mixins: [BackboneReactComponent]
  render: ->
    <form className="commentForm" onSubmit={@onSubmit}>
      <input type="text" placeholder="Name" ref="author" />
      <input type="text" placeholder="Comment" ref="text" />
      <input type="submit" value="Post" />
    </form>

  onSubmit: (e) ->
    e.preventDefault()

    author = @refs.author.getDOMNode().value.trim()
    text = @refs.text.getDOMNode().value.trim()

    return unless author && text

    @refs.author.getDOMNode.value = ''
    @refs.text.getDOMNode.value = ''

    @getCollection().add author: author, text: text
