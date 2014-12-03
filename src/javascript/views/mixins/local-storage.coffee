prefix = 'time'
  
module.exports = 
  getFromStorage: (key) ->
    JSON.parse(localStorage.getItem("#{prefix}:#{key}") || "0")
  setToStorage: (key, item) ->
    localStorage.setItem("#{prefix}:#{key}", JSON.stringify(item))
  setPrefix: (string) ->
    prefix = string