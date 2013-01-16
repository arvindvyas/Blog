myTimer = ->
  d = new Date()
  t = d.toLocaleTimeString()
  document.getElementById("demo").innerHTML = t
myVar = setInterval(->
  myTimer()
, 1000)


@myFunction = myFunction = ()->
  alert "this is arvind"



@changeImage = changeImage = ->
  element = document.getElementById("myimage")

  if element.src.match("assets/pic_bulbon.gif")
    element.src = "assets/pic_bulboff.gif"
  else
    element.src = "assets/pic_bulbon.gif"



@getLocation = getLocation = ->
  if navigator.geolocation
    navigator.geolocation.getCurrentPosition showPosition
  else
    x.innerHTML = "Geolocation is not supported by this browser." 
showPosition = (position) ->
  x = document.getElementById("coordinates")

  x.innerHTML = "Latitude: " + position.coords.latitude + "<br>Longitude: " + position.coords.longitude

 @removeLocation = removeLocation = ->
    x = document.getElementById("coordinates")
    x.innerHTML = ""
