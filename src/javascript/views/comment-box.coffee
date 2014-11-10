React = require 'react'
CommentForm = require './comment-form'
CommentList = require './comment-list'
BackboneReactComponent = require 'backbone-react-component'

module.exports = React.createClass
  mixins: [BackboneReactComponent]
  render: ->
    <div className="commentBox">
      <h1>Comments</h1>
      <CommentForm />
      <CommentList />
    </div>
