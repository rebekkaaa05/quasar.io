document.addEventListener('DOMContentLoaded', () => {
    const searchForm = document.getElementById('search-form');
    const cityInput = document.getElementById('city');

    searchForm.addEventListener('submit', () => {
        const city = cityInput.value.trim();
        if (city) {
            searchAmbulanceServices(city);
        }
    });
});

function searchAmbulanceServices(city) {
    fetch(`fetch_ambulance_services.php?city=${city}`)
        .then(response => response.json())
        .then(data => {
            displayAmbulanceServices(data);
        })
        .catch(error => console.error('Error fetching ambulance services:', error));
}

function displayAmbulanceServices(ambulanceServices) {
    const container = document.querySelector('main .amb_container');
    container.innerHTML = '';

    ambulanceServices.forEach(service => {
        const serviceDetails = document.createElement('div');
        serviceDetails.classList.add('amb_details');

        serviceDetails.innerHTML = `
            <h3>${service.name}</h3>
            <p><span class="material-symbols-outlined">location_on</span><span class="location">${service.location}</span></p>
            <p>Phone Number: <span class="phone-box">${service.phone}</span></p>
        `;

        container.appendChild(serviceDetails);
    });
}
