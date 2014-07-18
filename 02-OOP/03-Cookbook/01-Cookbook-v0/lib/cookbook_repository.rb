require "csv"

class CookbookRepository

  attr_reader :cookbook

  def initialize
    @cookbook = []
    @filepath = "/Users/annebuffetaud/code/AnneHPW/promo-3-challenges/02-OOP/03-Cookbook/01-Cookbook-v0/lib/recipes.csv"
    load_csv
  end


  def load_csv
    CSV.foreach(@filepath) do |row|
      @cookbook << row[0]
    end

  end

  def add_recipe(recipe)
    @cookbook << recipe
    save_csv
  end

  def find_recipe(index)
    return @cookbook[index]
  end

  def remove_recipe(index)
    @cookbook.delete_at(index)
    save_csv
  end

  def save_csv
    CSV.open(@filepath, "w") do |csv|
      @cookbook.each do |recipe| # un csv attend toujours une injection de tableau
        csv << [recipe]
      end
    end
  end

end

# mycb = CookbookRepository.new
# mycb.add_recipe("Poulet")
# mycb.add_recipe("Carottes")
# mycb.remove_recipe(1)