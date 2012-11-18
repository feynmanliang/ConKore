var location_click
var map
var geocoder
var marker = null

function initialize() {
    geocoder = new google.maps.Geocoder();
    var mapOptions = {
        center: new google.maps.LatLng(42.34, -71.0927),
        zoom: 8,
        mapTypeId: google.maps.MapTypeId.ROADMAP
    };
    map = new google.maps.Map(document.getElementById("map_canvas"),
            mapOptions);
    google.maps.event.addListener(map, 'click', function(event) {
        mapZoom = map.getZoom();
        location_click = event.latLng;
        setTimeout("placeMarker()", 500);
    });
}

function placeMarker() {
    if(mapZoom == map.getZoom()){
        if(marker != null)
            marker.setMap(null);
        marker = new google.maps.Marker({
            position: location_click,
            map: map
        });
$('#location_lat').val(marker.position.Ya);
$('#location_long').val(marker.position.Za);
    }
}

$(document).ready(function() {
    initialize();
});

function handleKeyPress(e) {
var key=e.keyCode || e.which;
if (key==13){
    getAddress();
}
}

function getAddress() {
        var address = document.getElementById('address').value;
        geocoder.geocode( { 'address': address}, function(results, status) {
          if (status == google.maps.GeocoderStatus.OK) {
            map.setCenter(results[0].geometry.location);
          } else {
            alert('Geocode was not successful for the following reason: ' + status);
          }
        });
      }


// function loadScript() {
//   var script = document.createElement("script");
//   script.type = "text/javascript";
//   script.src = "http://maps.google.com/maps/api/js?key=AIzaSyB7f2A7fhm-C0t6GTU_rKguTK9jURXtUv8&sensor=false&callback=initialize";
//   document.body.appendChild(script);
// }
//   
// window.onload = loadScript;


// $(function() {
//   var errorFunction, location, successFunction;
//   location = function() {
//     if (navigator.geolocation) {
//       return navigator.geolocation.getCurrentPosition(successFunction, errorFunction);
//     } else {
// 
//     }
//   };
//   successFunction = function(position) {
//     var lat, lot;
//     lat = position.coords.latitude;
//     lot = position.coords.longitude;
//     $('input#transaction_lat').val(lat);
//     return $('input#transaction_long').val(lot);
//   };
//   errorFunction = function(position) {};
//   return location();
// });

