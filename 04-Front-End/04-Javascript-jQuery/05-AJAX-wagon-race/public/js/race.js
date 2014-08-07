var player1_name,
    player2_name;
var start = Date.now();

function time_elapsed() {
  var end = Date.now(),
  elapsed = (end-start)/1000;
  return elapsed;
}

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

  console.debug("next", next);
  if (next.is(':last-child')) {
    elapsed = time_elapsed();
    if (row.is('#player1')) {
      alert(player1_name + " has won in " + elapsed + " seconds!");
    }
    else {
      alert(player2_name + " has won in " + elapsed + " seconds!");
    }

    reset();
  }
}

$(function() {
  var session_id,
      start_button = $('#start-btn'),
      names_form = $('#names-form'),
      player1 = $('#player1'),
      player2 = $('#player2');


  $.getJSON('http://localhost:4567/session/create', function(data_json) {
    session_id = data_json.id;
    start_button.show();
  });

  start_button.on('click', function() {
    start_button.hide();
    names_form.show();
  });

  names_form.on('submit', function(event) {
    event.preventDefault();
    player1_name = $('#player1-name').val();
    player2_name = $('#player2-name').val();
    var data = JSON.stringify({
      players: [
        { name: player1_name },
        { name: player2_name }
      ]
    });
    $.post('http://localhost:4567/session/'+session_id+'/game/create', data, function(data_json) {
        names_form.hide();
        $('#board').show();
        $(document).on('keyup', function(e) {
            if (e.keyCode == 81) {
                forward(player1);
            }
            else if (e.keyCode == 80) {
                forward(player2);
            }
        });
    });
  });
});