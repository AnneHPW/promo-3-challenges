class Recipe
  attr_reader :name, :description, :rating, :cooking, :preparation, :summary

  def initialize(attributes)
    @name = attributes[:name]
    @description = attributes[:description]
    @rating = attributes[:rating]
    @cooking = attributes[:cooking]
    @preparation = attributes[:preparation]
    @summary = attributes[:summary]

  end
end
