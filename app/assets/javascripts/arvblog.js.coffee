myTimer = ->
  d = new Date()
  t = d.toLocaleTimeString()
  document.getElementById("demo").innerHTML = t
myVar = setInterval(->
  myTimer()
, 1000)