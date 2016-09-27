$(function() {
  $("#login-link").on("click", function(e){
    e.preventDefault();

    var linkTarget = $(this).attr("href")

    var request = $.ajax({
      url: linkTarget,
      type: "GET"
    })

    request.done(function(form){
      $(".active").append(form)
    })
  });

  $

});
