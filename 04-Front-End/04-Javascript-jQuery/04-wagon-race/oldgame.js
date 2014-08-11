function reset() {
  $('#player1, #player2')
    .find('.active')
      .removeClass('active')
    .end()
    .find('td:first-child')
      .addClass('active');
}

function forward(row) {
  var active = row.find('.active');
  var next = active.next();

  active.removeClass('active');
  next.addClass('active');

  if (next.is(':last-child')) {
    alert(row.attr('id') + " wins!");
    reset();
  }
}

$(function() {
  var session_id;
  var start-btn = $('#start-btn');
  var names-form = $('#names-form')


  $.getJSON('http://localhost:4567/session/create', function (json) {
    session_id = json.id:;
    $('#start-btn').show();

  });

    start-btn on('click', function() {
    start-btn.hide();
    names-form.show();
// display form
  });

  names-form.on('submit', function(event) {
    event.preventDefault();
    var player1-name = $('#player1-name').val();
    var player2-name = $('#player2-name').val();
    var data = JSON.stringify {
      players: [
        { name: player1-name },
        { name: player2-name }
      ]
    });
  $.post('http//localhost:4567/session/'+session_id+'/game/create', data, function(json) {;})
  names-form.hide();
  $('#board').show();

  names-form.hide()
})



  // var player1 = $('#player1'),
  //     player2 = $('#player2');

  // $(document).on('keyup', function(e) {
  //   if (e.keyCode == 81) {
  //     forward(player1);
  //   }
  //   else if (e.keyCode == 80) {
  //     forward(player2);
  //   }
  // });
});
