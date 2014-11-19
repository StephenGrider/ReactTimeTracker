prefix = 'time'
  
module.exports = 
  get: (key) ->
    JSON.parse(localStorage.getItem("#{prefix}:#{key}"))
  set: (key, item) ->
    localStorage.setItem("#{prefix}:#{key}", JSON.stringify(item))
  setPrefix: (string) ->
    prefix = string