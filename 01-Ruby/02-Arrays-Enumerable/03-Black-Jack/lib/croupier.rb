require_relative 'black_jack'


def play_game

  score_player = 0
  score_bank = bank_score

  while asking_for_card?(score_player) == true
  score_player += pick_card
  puts state_of_the_game(score_player, score_bank)
  end

  total = game_outcome(score_bank, score_player)
  puts build_message_for(total)

end

  #TODO: make the user play from terminal in a while loop that will stop when the user will not be asking for  a new card

def state_of_the_game(score, bank)
  "Your score is #{score}, bank is #{bank}!"
  # TODO: Returns custom message with player's score and bank's score
end

def asking_for_card?(score)



  if  score < 21
  puts "Cards ? (type 'Y' or 'Yes for a new card)"
  response = gets.chomp
    if response == "Y" || response == "yes"
      true
    else
      false
    end
  else
    false
  end

  # TODO: Ask for a card only if the score is less or equal to 21, then returns true or false according to the user's choice
end

def build_message_for(outcome)
  if outcome[1] > 21
    "You are over 21... you loose."
  elsif outcome[1] == 21
    return "Black Jack!"
  elsif outcome[1] > outcome[0]
     "You beat the bank! You win."
  else
      "Bank beats you! You loose."
  end
 #TODO: return specific message depending on the game outcome (= bank's score and user's score)
end
