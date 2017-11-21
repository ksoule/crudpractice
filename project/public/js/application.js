$(document).ready(function() {
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them
  $("#create").on("submit", workshopSubmit()) //Event Handler
  console.log('boop');
});

// (the form).on(it got submit, function() {
//   make it not go
// })
const workshopSubmit = function(event){
  event.preventDefault();
    $.ajax({
      url: "/workshops",
      method: "post",
      data: $(this).serialize()
    }).done(function(response){
    $("ul").append(response);
  })
}








  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()
