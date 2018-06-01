import GMaps from 'gmaps/gmaps.js';

const initMapShow = function(mapElement) {
  if (mapElement) { // don't try to build a map if there's no div#map to inject in
    const map = new GMaps({ el: '#map-show', lat: 0, lng: 0 });
    const marker = JSON.parse(mapElement.dataset.markers);
    console.log(marker);
    map.addMarkers(marker);
    if (marker.length === 0) {
      map.setZoom(2);
    } else if (marker.length === 1) {
      map.setCenter(marker[0].lat, marker[0].lng);
      map.setZoom(14);
    } else {
      map.fitLatLngBounds(marker);
    }
    const styles = [     {
        "featureType": "all",
        "elementType": "all",
        "stylers": [
            {
                "visibility": "simplified"
            },
            {
                "hue": "#ff0000"
            }
        ]
    }];



map.addStyle({
  styles: styles,
  mapTypeId: 'map_style'
});
map.setStyle('map_style');
  }
};

export default initMapShow;


