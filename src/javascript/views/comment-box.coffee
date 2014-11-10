React = require 'react'
CommentForm = require './comment-form'
CommentList = require './comment-list'

module.exports = React.createClass
  render: ->
    <div className="commentBox">
      <h1>Comments</h1>
      <CommentForm />
      <CommentList data={this.props.data}/>
    </div>
