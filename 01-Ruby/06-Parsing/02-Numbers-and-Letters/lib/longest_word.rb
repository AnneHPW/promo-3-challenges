require 'open-uri'
require 'json'

def generate_grid(grid_size)
#TODO: generate random grid of letters
Array.new(grid_size) { ("A".."Z").to_a.sample }
# est identique à grid_size.times { grid << ("A".."Z").to_a.sample }

end


def run_game(attempt, grid, start_time, end_time)
# Je verifie qu'attempt est bien constitué de lettres de grid
result = {}

result[:time] = end_time - start_time

  if check_grid?(attempt,grid)

    traduction = translate(attempt)

    if traduction

    result[:score] = attempt.size
    result[:message] = "well done"
    result[:translation] = traduction



  else
    result[:score] = attempt
    result[:message] = "not in the grid"
  end

result

end

def translate(attempt)
api_url = "http://api.wordreference.com/0.8/80143/json/enfr"

  open(api_url) do |stream|
    definition = JSON.parse(stream.read)

    if definition.has.key?("Error")
      traduction = nil
    else
      traduction = definition["term0"] ["PrincipalTranslations"]["0"]["FirstTranslation"]["term"]
    end
    return traduction

end
end
  #TODO: runs the game and return detailed hash of result
def check_grid?(attempt, grid)
  #Cette méthode vérifie que attempt utilise les valeurs contenues dans grid
  # le "?" est une best practice qui indique que l'on attend un True ou False pour vérifier une condition
  attempt_grid = attempt.spilt("")
  attempt_grid.all? { |letter| attempt_grid.count(letter) <= grid.count(letter) }
end


