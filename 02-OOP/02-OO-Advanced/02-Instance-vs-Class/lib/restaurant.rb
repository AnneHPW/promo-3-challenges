class Restaurant

  attr_accessor :city, :name, :average_rating, :restaurants#TODO add relevant accessors if necessary

  def initialize(city, name)
    @name = name
    @city = city
    @average_rating = 0
    @rates = []
    #TODO: implement constructor with relevant instance variables
  end

  def rate(grade)
    sum = 0
    @rates << grade
    @rates.each do |rate|
      sum = rate + sum
    end
    @average_rating = sum / @rates.size
  end


  def self.filter_by_city(restaurants, city)
    resto_selection = []
    restaurants.each do |resto|
      if resto.city == city
        resto_selection << resto
      end
    end
    resto_selection
  end

  #TODO: implement #filter_by_city and #rate methods
end
