import mapboxgl from 'mapbox-gl';

const initMapbox = () => {
  const mapElement = document.getElementById('map');
  var current_marker
  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    window.map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mapbox/streets-v10',
      center: [35.5018, 33.8938], // starting position
      zoom: 12 // starting zoom
    }).addControl(new mapboxgl.NavigationControl());
    map.addControl(new mapboxgl.GeolocateControl({
      positionOptions: {
        enableHighAccuracy: true
      },
      trackUserLocation: true
    }));
    map.on('click', function (e) {
      $('.btn-confirm-address').show();
    if(current_marker){
      current_marker.remove()
    }
    window.current_marker = new mapboxgl.Marker({
      color: "#4264FB",
      draggable: true
      })
      .setLngLat([e.lngLat.lng, e.lngLat.lat])
      .addTo(map);
    });
    map.on('load', function(){
      map.resize();
    });
    window.geocode = function(){
      var geocoded_address_req = `https://us1.locationiq.com/v1/reverse.php?key=pk.baf8daf710cdb940c656ca4f03cbcf4f&format=json&lat=${current_marker.getLngLat().lat}&lon=${current_marker.getLngLat().lng}`
      $.get(geocoded_address_req, function(data){
        console.log(data);
      });
      if(current_marker){
        var req = $('.btn-confirm-address').data('path') + `?lat=${current_marker.getLngLat().lat}&long=${current_marker.getLngLat().lng}`
        if($('#delivery_instruction').val().length > 0){
          req += ('#delivery_instruction').val()
        }
        console.log(req)
        $.get(req, function(data){
          alert("address sent")
        });
      }else{
        alert("Please select your location first");
      }
    }
    /*$('.btn-confirm-address').click(function(){

    })*/
  }
};

export { initMapbox };
