View =  require './views/comment-box'
React = require 'react'

data = [
  {author: "Pete Hunt", text: "This is one comment"},
  {author: "Jordan Walke", text: "This is *another* comment"}
]

React.render(
  <View data={data} />,
  document.getElementById('content')
);
