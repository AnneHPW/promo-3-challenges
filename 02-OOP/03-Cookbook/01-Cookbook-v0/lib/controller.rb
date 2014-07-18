require_relative "cookbook"
require_relative "view"
require_relative "recipe"

class Controller
  def initialize(cookbook)
    @cookbook = cookbook
    @view = View.new
  end

  def list
    cookbook.sort_by_index
  end

  def create
    attributes = @view.ask_user_add_recipe
    recipe = Recipe.new(attributes[0], attributes[1])
    @cookbook.add_recipe(recipe)
  end

  def destroy
    index = @view.ask_user_del_recipe
    @cookbook.remove_recipe(index)
  end


  def list
    cookbook.sort_by_index
  end

end
