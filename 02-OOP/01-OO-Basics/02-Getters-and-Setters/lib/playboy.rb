class Playboy

  #TODO: implement necessary getters or setters to run meeting_casanova.rb

  INITIAL_HAIR_LENGTH = 20  # beautiful long playboy hair
  attr_reader :lady
  attr_reader :name
  attr_reader :conquests
  attr_reader :nationality
  attr_accessor :hair_length

  def initialize(name, nationality)
    @conquests = []
    @name, @nationality = name, nationality
    @hair_length = INITIAL_HAIR_LENGTH
  end

  def meets(lady)
    @conquests << lady unless @married
  end

end