
const autocomplete = function(bookAddress) {
  document.addEventListener("DOMContentLoaded", function() {
    if (bookAddress) {
      var autocomplete = new google.maps.places.Autocomplete(bookAddress, { types: [ 'geocode' ] });
      google.maps.event.addDomListener(bookAddress, 'keydown', function(e) {
        if (e.key === "Enter") {
          e.preventDefault(); // Do not submit the form on Enter.
        }
      });
    }
  });
}

export default autocomplete;
