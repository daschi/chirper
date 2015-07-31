$(document).ready(function() {
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()
  $('.chirp-container').on("keydown", '.chirp', function(event){
    if (event.keyCode === 13) {
      event.preventDefault();
      var chirpContent = $(this).find('p').text();
      var chirpId = $(this).find('p').attr('id')
      var path="/chirps/"+chirpId+"/edit"
      var method="POST"
      var ajaxRequest = $.ajax({
        url: path,
        type: method,
        data: {"content": chirpContent}
      })
      ajaxRequest.done(function(serverResponse) {
        console.log("You did it!");
      })
      ajaxRequest.fail(function() {
        console.log("Server didn't send anything");
      })
    }
  })
});
