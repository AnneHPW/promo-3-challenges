

class OrangeTree

  attr_reader :death, :age, :fruits, :height

  def initialize
    @height = 0
    @death = false
    @age = 0
    @fruits = 0
  end




  def one_year_passes!
    @age += 1
    @height +=1 if @age <= 10
    update_fruits
    dead?
  end


  def dead?
    num = 100 - @age
    if @age > 50
      num_death  = rand(0..num)
      if num_death == 0
        @death = true
      end
    end
        @death
  end





  def update_fruits
   @fruits = 0
   @fruits = 100 if (6..10).cover?(@age)
   @fruits = 200 if (11..15).cover?(@age)


    # if @age <= 5
    #   @fruits = 0
    # elsif @age <= 10
    #   @fruits += 100
    # elsif @age <= 15
    #   @fruits += 200
    # else
    #   @fruits = 0
    # end
  end


  def pick_a_fruit!
    @fruits -= 1
  end


end







  # TODO: Implement all the specs defined in the README.md :)


orange_tree = OrangeTree.new


