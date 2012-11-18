var map
var last_marker

function initialize() {
    var mapOptions = {
        center: new google.maps.LatLng(0, 0),
        zoom: 2,
        mapTypeId: google.maps.MapTypeId.ROADMAP
    };
    map = new google.maps.Map(document.getElementById("map_canvas"),
            mapOptions);


    for (var i in json){
        last_marker = createMarker(i,json[i].title);
    }
}

function createMarker(i, t) {
    var temp = new google.maps.Marker({       
        position: new google.maps.LatLng(json[i].lat, json[i].long),
        map: map,  // google.maps.Map 
        title: t,
        extra: i      
    }); 
    return temp;
}

$(document).ready(function() {
    initialize();
});

