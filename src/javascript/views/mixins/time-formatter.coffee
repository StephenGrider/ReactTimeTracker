module.exports =
  formatTime: (time) ->
    time = time.replace(/[^0-9|h|m]/gi, '')
    if time.match(/[hm]/gi)
      time = time.split('h')
      "#{time[0]}h #{time[1]}"
    else if time.match(/h/gi)
      time
    else if time.match(/m/gi)
      minutes = parseInt(time.split('m')[0]) ? 0
      if minutes > 59
        "#{minutes % 60}h #{((minutes/60 % 1) * 60).toFixed(0)}"
      else
        "#{minutes}m"
    else if time.length
      time
    else
      ''
