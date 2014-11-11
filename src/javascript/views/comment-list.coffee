React = require 'react'
Comment = require './comment'
BackboneReactComponent = require 'backbone-react-component'

module.exports = React.createClass
  mixins: [BackboneReactComponent]
  render: ->
    commentNodes = @getCollection().map (comment) ->
      <Comment author={comment.get 'author'} text={comment.get 'text'} />

    <div className="commentList">
      {commentNodes}
    </div>
