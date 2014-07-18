require "csv"
require_relative "recipe"

class Cookbook

  attr_reader :recipes

  def initialize(csv_file)
    @recipes = []
    @filepath = csv_file
    load_csv
  end


  def load_csv
    CSV.foreach(@filepath) do |row|
      @recipes << Recipe.new(row[0], row[1])
    end
  end

  def add_recipe(recipe)
    @recipes << recipe
    save_csv
  end

  def remove_recipe(index)
    @recipes.delete_at(index)
    save_csv
  end

  def save_csv
    CSV.open(@filepath, "w") do |csv|
      @recipes.each do |recipe| # un csv attend toujours une injection de tableau
        csv << [recipe]
      end
    end
  end

end


# def find_recipe(index)
#     return @recipes[index]
#   end

# mycb = CookbookRepository.new
# mycb.add_recipe("Poulet")
# mycb.add_recipe("Carottes")
# mycb.remove_recipe(1)