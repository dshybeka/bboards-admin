/**
 * Created by dshybeka on 21.01.2015.
 */
$(document).ready(function() {


    var boardMap = (function() {

        var self = this;

        var minskLat = 53.9;
        var minskLng = 27.5666667;

        var defaultZoom = 11;
        var $positionLat = $('#position-lat');
        var $positionLng = $('#position-lng');

        var $positionZoom = $('#position-zoom');
        var curMarker = null;
        self.init = function() {

            var curLat = $positionLat.val();
            var curLng = $positionLng.val();
            var curZoom = $positionZoom.val();
            if ((curLat === undefined || curLat.trim().length == 0) ||
                (curLng === undefined || curLng.trim().length == 0) ||
                (curZoom === undefined || curZoom.trim().length == 0)  ) {
                curLat = minskLat;
                curLng = minskLng;
                curZoom = defaultZoom;
            }

            var mapOptions = { zoom: +curZoom, center: new google.maps.LatLng(minskLat, minskLng) };

            var map = new google.maps.Map(document.getElementById('map-canvas'),
                mapOptions);

            if ((curLat || curLat.trim().length !== 0) &&
                (curLng || curLng.trim().length !== 0 ) ) {
                self.placeMarker(map, new google.maps.LatLng(curLat, curLng));
            }

            self.addListeners(map);
            self.addSearchBox(map);
            self.disableEnterSubmiting();
        };

        self.disableEnterSubmiting = function () {
            $(window).keydown(function(event){
                if(event.keyCode == 13) {
                    event.preventDefault();
                    return false;
                }
            });
        }

        self.placeMarker = function(map, location) {
            if (curMarker != null) {
                curMarker.setMap(null);
            }
            curMarker = new google.maps.Marker({
                position: location,
                map: map
            });
        };

        self.addListeners = function(map) {
            google.maps.event.addListener(map, 'click', function(event) {

                self.placeMarker(map, event.latLng);
                $positionLat.val(event.latLng.k );
                $positionLng.val(event.latLng.D );
                $positionZoom.val(map.getZoom());
            });

            google.maps.event.addListener(map, 'zoom_changed', function() {
                var zoomLevel = map.getZoom();
                $positionZoom.val(zoomLevel);
            });
        };

        self.addSearchBox = function(map) {
            var input = /** @type {HTMLInputElement} */(
                document.getElementById('pac-input'));
            map.controls[google.maps.ControlPosition.TOP_LEFT].push(input);

            var searchBox = new google.maps.places.SearchBox(
                /** @type {HTMLInputElement} */(input));

            google.maps.event.addListener(searchBox, 'places_changed', function() {
                var places = searchBox.getPlaces();
                var place = places[0];


                self.placeMarker(map, place.geometry.location);
            });
        };

        return self;
    })();
    boardMap.init();
})