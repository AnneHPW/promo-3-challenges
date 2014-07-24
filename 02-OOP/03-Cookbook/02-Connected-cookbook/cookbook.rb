require 'csv'
require 'nokogiri'
require 'open-uri'
require_relative 'recipe'
require_relative 'view'


class Cookbook  # Repository, Fake Database
  attr_reader :recipes

  def initialize(csv_file)
    @recipes = []
    @csv_file = csv_file
    load_csv

  end

  def add_recipe(recipe)
    @recipes << recipe
    save_to_csv
  end

  def remove_recipe(recipe_id)
    @recipes.delete_at(recipe_id)
    save_to_csv
  end

  def marmiton(keyword)
    doc = Nokogiri::HTML(File.open('marmiton.html'))
    keyword = @view.marmiton_ask_keyword_for_search
    response = open("http://www.marmiton.org/recettes/recherche.aspx?aqt=#{keyword}&sort=fastdesc&st=5")
    doc = nokogiri::HTML(response)
    doc.search('.m_search_result').each do |element|
    name = element.css('.m_search_titre_recette > a').inner_text}"
    puts "Rating : #{element.search('.etoile1').size} / 5}"
  end


  private

  def save_to_csv
    CSV.open(@csv_file, 'w') do |csv|
      @recipes.each do |recipe|
        csv.puts([recipe.name, recipe.description])
      end
    end
  end

  def load_csv
    if File.exists?(@csv_file)
      CSV.foreach(@csv_file) do |row|
        attributes = {
          name: row[0],
          description: row[1]
        }
        @recipes << Recipe.new(attributes)
      end
    end
  end
end