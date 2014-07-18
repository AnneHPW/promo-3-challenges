class Recipe
  attr_reader :name, :description

  def initialize(name, description)
    @description = description
    @name = name
  end

end