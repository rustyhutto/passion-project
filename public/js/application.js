$(function() {
  $("#login-link").on("click", function(e){
    e.preventDefault();
    $(this).hide();

    var linkTarget = $(this).attr("href")

    var request = $.ajax({
      url: linkTarget,
      type: "GET"
    })

    request.done(function(form){
      $(".active").append(form);
    })
  });

  $("#checklist-form").on("click", function(e){
    e.preventDefault();
    $(this).hide();

    var linkTarget = $(this).attr("href")

    var request = $.ajax({
      url: linkTarget,
      type: "GET"
    })

    request.done(function(form){
      console.log(form)
      $("#add-checklist").append(form);
    })
  })
});

function initMap() {
  var map = new google.maps.Map(document.getElementById('map'), {
    zoom: 15,
    center: {lat: 37.7749, lng: -122.4194}
  });

  var marker = new google.maps.Marker({
    position: {lat: 37.7749, lng: -122.4194},
    map: map,
    title: 'Hello World!'
  });

  var geocoder = new google.maps.Geocoder();


  document.getElementById('submit').addEventListener('click', function() {
    geocodeAddress(geocoder, map);
  });
}

function geocodeAddress(geocoder, resultsMap) {
  var address = document.getElementById('address').value;
  geocoder.geocode({'address': address}, function(results, status) {
    if (status === 'OK') {
      resultsMap.setCenter(results[0].geometry.location);
      var marker = new google.maps.Marker({
        map: resultsMap,
        position: results[0].geometry.location
      });
    } else {
      alert('Geocode was not successful for the following reason: ' + status);
    }
  });
}
