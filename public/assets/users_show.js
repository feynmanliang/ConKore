function initialize(){var e={center:new google.maps.LatLng(0,0),zoom:2,mapTypeId:google.maps.MapTypeId.ROADMAP};map=new google.maps.Map(document.getElementById("map_canvas"),e);for(var t in json)last_marker=createMarker(t,json[t].title)}function createMarker(e,t){var n=new google.maps.Marker({position:new google.maps.LatLng(json[e].lat,json[e].long),map:map,title:t,extra:e});return n}var map,last_marker;$(document).ready(function(){initialize()});