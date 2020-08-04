if(navigator.geolocation){
    navigator.geolocation.getCurrentPosition(position => {
        let LAT = position.coords.latitude;
        let LONG = position.coords.longitude;
        let KEY = "AIzaSyA14yCmoAf85kOoAAEBdJbMkQ9orWVwktQ";
        let url = `https://maps.googleapis.com/maps/api/geocode/json?latlng=${LAT},${LONG}&key=${KEY}`;
        fetch(url)
            .then(response => response.json())
            .then(data => {
                console.log(data);
             })
            .catch(err => console.warn(err.message));
    });
}else{
    console.log('Geolocation not available');
}