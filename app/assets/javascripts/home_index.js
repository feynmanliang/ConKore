var map

function initialize() {
    var styles = [
    {
      stylers: [
        { hue: "#f89306" },
        { saturation: -30 }
      ]
    },{
      featureType: "road",
      elementType: "geometry",
      stylers: [
        { lightness: 100 },
        { visibility: "simplified" }
      ]
    },{
      featureType: "road",
      elementType: "labels",
      stylers: [
        { visibility: "off" }
      ]
    }
  ];

    var mapOptions = {
        panControl: false,
  zoomControl: false,
  mapTypeControl: false,
  scaleControl: false,
  streetViewControl: false,
  overviewMapControl: false,
        center: new google.maps.LatLng(0,0),
        zoom: 2,
        mapTypeId: google.maps.MapTypeId.ROADMAP
    };
    var styledMap = new google.maps.StyledMapType(styles, {name: "Styled Map"});
    map = new google.maps.Map(document.getElementById("map_canvas"), mapOptions);
      map.mapTypes.set('map_style', styledMap);
  map.setMapTypeId('map_style');
}

$(document).ready(function() {
    initialize();
});

