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



@Test =  Test = ->
  if navigator.geolocation
    navigator.geolocation.getCurrentPosition showPosition_map, showError
  else
    x.innerHTML = "Geolocation is not supported by this browser."
showPosition_map = (position) ->
  latlon = position.coords.latitude + "," + position.coords.longitude
  img_url = "http://maps.googleapis.com/maps/api/staticmap?center=" + latlon + "&zoom=14&size=400x300&sensor=false"
  document.getElementById("coordinates").innerHTML = "<img src='" + img_url + "'>"
showError = (error) ->
  switch error.code
    when error.PERMISSION_DENIED
      x.innerHTML = "User denied the request for Geolocation."
    when error.POSITION_UNAVAILABLE
      x.innerHTML = "Location information is unavailable."
    when error.TIMEOUT
      x.innerHTML = "The request to get user location timed out."
    when error.UNKNOWN_ERROR
      x.innerHTML = "An unknown error occurred."
x = document.getElementById("coordinates")