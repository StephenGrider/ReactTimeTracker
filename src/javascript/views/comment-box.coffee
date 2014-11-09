React = require 'react'
CommentForm = require './comment-form'
CommentList = require './comment-list'

module.exports = React.createClass
  render: ->
    <div className="commentBox">
      <CommentForm />
      <CommentList />
    </div>
