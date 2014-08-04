$(function() {
  $( "#image" ).on('click', function() {
    // show modal
    $('#modal-overlay').show();
    $('#modal-form').show();
  });

  $('#modal-overlay').on('click', function() {
    // hide modal
    $('#modal-overlay').hide();
    $('#modal-form').hide();
  });

});
