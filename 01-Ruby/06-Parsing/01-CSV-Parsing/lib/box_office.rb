# Encoding: utf-8
require 'csv'
filepath = "/Users/annebuffetaud/code/AnneHPW/promo-3-challenges/01-Ruby/06-Parsing/01-CSV-Parsing/lib/movies.csv"
movies_list = {}



def most_successfull(number, max_year, file_name)
  #TODO: return the number most successfull movies max_year
  successfull_movies = []


  csv_options = { col_sep:',', quote_char:'"', headers: :first_row, encoding: 'iso-8859-1' }
  CSV.foreach(file_name, csv_options) do |row|
    if row["year"].to_i < max_year
      successfull_movies << {name: row["name"], year: row["year"].to_i, earnings: row["earnings"].to_i}
    end
  end

  successfull_movie = successfull_movies.sort { |row,row_2| row_2[:earnings] <=> row[:earnings] }
  successfull_movies.take(number)
end

most_successfull(4, 1980, filepath)
















