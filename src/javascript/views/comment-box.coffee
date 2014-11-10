React = require 'react'
CommentForm = require './comment-form'
CommentList = require './comment-list'

module.exports = React.createClass
  getInitialState: ->
    commentsCollection: []

  render: ->
    <div className="commentBox">
      <h1>Comments</h1>
      <CommentForm commentsCollection={@state.commentsCollection} />
      <CommentList commentsCollection={@state.commentsCollection} />
    </div>
