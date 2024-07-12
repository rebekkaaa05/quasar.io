let map, infoWindow;

function initMap() {
    map = new google.maps.Map(document.getElementById("map"), {
        center: { lat: -34.397, lng: 150.644 },
        zoom: 15,
    });

    infoWindow = new google.maps.InfoWindow();

    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(
            (position) => {
                const pos = {
                    lat: position.coords.latitude,
                    lng: position.coords.longitude,
                };

                infoWindow.setPosition(pos);
                infoWindow.setContent("You are here.");
                infoWindow.open(map);
                map.setCenter(pos);

                findNearbyPlaces(pos, 'hospital');
                findNearbyPlaces(pos, 'pharmacy');
            },
            () => {
                handleLocationError(true, infoWindow, map.getCenter());
            }
        );
    } else {
        handleLocationError(false, infoWindow, map.getCenter());
    }
}

function handleLocationError(browserHasGeolocation, infoWindow, pos) {
    infoWindow.setPosition(pos);
    infoWindow.setContent(
        browserHasGeolocation
            ? "Error: The Geolocation service failed."
            : "Error: Your browser doesn't support geolocation."
    );
    infoWindow.open(map);
}

function findNearbyPlaces(location, type) {
    const service = new google.maps.places.PlacesService(map);
    service.nearbySearch(
        {
            location: location,
            radius: 5000,
            type: [type],
        },
        (results, status) => {
            if (status !== "OK" || !results) return;
            addPlaces(results);
        }
    );
}

function addPlaces(places) {
    const placesList = document.getElementById("places-list");
    places.forEach((place) => {
        const li = document.createElement("li");
        li.textContent = place.name;
        placesList.appendChild(li);
    });
}