$(function() {

  var end_of_race = 15;

  var players = [
    {
      id: 1,
      keyCode: 65,
      position: 0
    },
    {
      id: 2,
      keyCode: 80,
      position: 0
    }
  ];

  initRace(end_of_race);

  $(document).keyup(function(e) {
    if (players[0].position >= (end_of_race - 1)) {
      alert('player 1 has won');
    }
    else if (players[1].position >= (end_of_race - 1)) {
      alert('player 2 has won');
    }
    else {
      selectPlayerBykeyCode(e.keyCode);
    }
  });


  function initRace(size) {
    for (var i = 0; i < size; i += 1) {
      $("#player1_race").append("<td></td>");
      $("#player2_race").append("<td></td>");
    }
    $ ("#player1_race td:first").addClass('active');
    $ ("#player2_race td:first").addClass('active');
  }

  function selectPlayerBykeyCode(keyCode) {
    players.forEach(function(player){
      if (keyCode == player.keyCode)  {
      console.log("test")
        update_player_position(player);
      }
    });
  }




  function update_player_position(player) {
    $('#player' + player.id + '_race').find('td.active').removeClass('active').next().addClass('active');
    player.position++;
  }


});
