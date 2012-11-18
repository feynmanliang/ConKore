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
    last_marker.setIcon('http://maps.google.com/mapfiles/ms/icons/yellow-dot.png');
    set_data(last_marker);

}

function createMarker(i, t) {
    var temp = new google.maps.Marker({       
        position: new google.maps.LatLng(json[i].lat, json[i].long),
        map: map,  // google.maps.Map 
        title: t,
        extra: i      
    }); 
    google.maps.event.addListener(temp, 'click', function() { 
    last_marker.setIcon('http://maps.google.com/mapfiles/ms/icons/red-dot.png');
    last_marker = temp;
    last_marker.setIcon('http://maps.google.com/mapfiles/ms/icons/yellow-dot.png');
        set_data(temp);
    }); 
    return temp;  
}

function set_data(temp){
    $("#name").html(json[temp.extra].title);
    if(json[temp.extra].description)
        $("#description").html(json[temp.extra].description);
    $("#more").html("See more");
    $("#more").click(function(){
        window.location='/locations/'+json[temp.extra].id;
    });
    $("#imag").attr("src", json[temp.extra].image_url);

}

function display_data(i){
    // alert(i.position.Ya + "hola");
}


$(document).ready(function() {
    initialize();
});

