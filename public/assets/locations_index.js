function initialize(){var e={center:new google.maps.LatLng(0,0),zoom:2,mapTypeId:google.maps.MapTypeId.ROADMAP};map=new google.maps.Map(document.getElementById("map_canvas"),e);for(var t in json)last_marker=createMarker(t,json[t].title);last_marker.setIcon("http://maps.google.com/mapfiles/ms/icons/yellow-dot.png"),set_data(last_marker)}function createMarker(e,t){var n=new google.maps.Marker({position:new google.maps.LatLng(json[e].lat,json[e].long),map:map,title:t,extra:e});return google.maps.event.addListener(n,"click",function(){last_marker.setIcon("http://maps.google.com/mapfiles/ms/icons/red-dot.png"),last_marker=n,last_marker.setIcon("http://maps.google.com/mapfiles/ms/icons/yellow-dot.png"),set_data(n)}),n}function set_data(e){$("#name").html(json[e.extra].title),json[e.extra].description&&$("#description").html(json[e.extra].description),$("#more").html("More details"),$("#more").click(function(){window.location="/locations/"+json[e.extra].id}),$("#imag").attr("src",json[e.extra].image_url)}function display_data(e){}var map,last_marker;$(document).ready(function(){initialize()});