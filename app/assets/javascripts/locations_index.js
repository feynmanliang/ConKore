var map

function initialize() {
    var mapOptions = {
        center: new google.maps.LatLng(0, 0),
        zoom: 2,
        mapTypeId: google.maps.MapTypeId.ROADMAP
    };
    map = new google.maps.Map(document.getElementById("map_canvas"),
            mapOptions);


    for (var i in json){
        marker = new google.maps.Marker({
            position: new google.maps.LatLng(json[i].lat, json[i].long),
            map: map
        });
    }

}

$(document).ready(function() {
    initialize();
});

