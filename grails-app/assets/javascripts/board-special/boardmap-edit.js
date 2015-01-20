/**
 * Created by dshybeka on 21.01.2015.
 */
$(document).ready(function() {


    var boardMap = (function() {

        var self = this;
        self.init = function() {

            var curMarker = null;

            var minskLat = 53.9;
            var minskLng = 27.5666667;
            var defaultZoom = 11;

            var $positionLat = $('#position-lat');
            var $positionLng = $('#position-lng');
            var $positionZoom = $('#position-zoom');

            var curLat = $positionLat.val();
            var curLng = $positionLng.val();
            var curZoom = $positionZoom.val();
            if (curLat.trim().length == 0 || curLng.trim().length == 0 || curZoom.trim().length == 0  ) {
                curLat = minskLat;
                curLng = minskLng;
                curZoom = defaultZoom;
            }

            var mapOptions = { zoom: +curZoom, center: new google.maps.LatLng(minskLat, minskLng) };

            var map = new google.maps.Map(document.getElementById('map-canvas'),
                mapOptions);

            if (curLat.trim().length !== 0 && curLng.trim().length !== 0  ) {
                placeMarker(new google.maps.LatLng(curLat, curLng));
            }

            google.maps.event.addListener(map, 'click', function(event) {

                placeMarker(event.latLng);
                $positionLat.val(event.latLng.k );
                $positionLng.val(event.latLng.D );
                $positionZoom.val(map.getZoom());
            });

            google.maps.event.addListener(map, 'zoom_changed', function() {
                var zoomLevel = map.getZoom();
                $positionZoom.val(zoomLevel);
            });

            function placeMarker(location) {
                if (curMarker != null) {
                    curMarker.setMap(null);
                }
                curMarker = new google.maps.Marker({
                    position: location,
                    map: map
                });
            };
        };
        return self;
    })();
    boardMap.init();
})