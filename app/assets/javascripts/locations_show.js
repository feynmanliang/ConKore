var map

function initialize() {
    var mapOptions = {
        center: new google.maps.LatLng(lat, lon),
        zoom: 8,
        mapTypeId: google.maps.MapTypeId.ROADMAP
    };
    map = new google.maps.Map(document.getElementById("map_canvas"),
            mapOptions);
        marker = new google.maps.Marker({
            position: new google.maps.LatLng(lat, lon),
            map: map
        });
}

$(document).ready(function() {
    initialize();
});
