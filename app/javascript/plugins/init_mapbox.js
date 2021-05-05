import mapboxgl from 'mapbox-gl';
import 'mapbox-gl/dist/mapbox-gl.css';

  const zoomMapToMarker = (map, marker) => {
    const bounds = new mapboxgl.LngLatBounds();
    bounds.extend([ marker.lng, marker.lat ])
    map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
  };

  const fitMapToMarkers = (map, markers) => {
    const bounds = new mapboxgl.LngLatBounds();
    markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
    map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
  };

  const addMakerToMap = (map) => {
    const mapElement = document.getElementById('map');

    // Take the marker from the view in `app/views/experiences/show.html.erb`
    console.log('1', mapElement.dataset.markers);
    if (mapElement.dataset.marker != null) {
        console.log('----------- marker!!')
        const marker = JSON.parse(mapElement.dataset.marker);

        new mapboxgl.Marker()
        .setLngLat([ marker.lng, marker.lat ])
        .addTo(map);    

        zoomMapToMarker(map, marker);
    } else if (mapElement.dataset.markers != null) {
        console.log('----------- markerSSSS!!', mapElement.dataset.markers)
        // Take the marker from the view in `app/views/experiences/index.html.erb`
        console.log("-----", mapElement.dataset.markers);
        const markerIndex = JSON.parse(mapElement.dataset.markers);
        markerIndex.forEach((marker) => {
            new mapboxgl.Marker()
            .setLngLat([ marker.lng, marker.lat ])
            .addTo(map);
        });

        // zoomMapToMarker(map, marker);
        fitMapToMarkers(map, markerIndex);
    }
  }

  const initMapbox = () => {
    const mapElement = document.getElementById('map');
    
    if (mapElement) { // only build a map if there's a div#map to inject into
        mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
        const map = new mapboxgl.Map({
        container: 'map',
        style: 'mapbox://styles/mapbox/streets-v10'
        });

        addMakerToMap(map);
    }
};

export { initMapbox };