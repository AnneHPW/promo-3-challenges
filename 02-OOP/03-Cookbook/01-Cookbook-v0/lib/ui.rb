require relative 'cookbook_repository'

class UI
  TASKS = {
    list: "- List all recipes [list]",
    add:  "- Add a new recipe [add]",
    del:  "- Delete a recipe [del]",
    exit: "- Exit [exit]"
  }

    # def user_input

    # end

def display_tasks
      puts "What do you want to do? \n"
      puts TASKS.values

      user_input = gets_chomp.to_s
        if user_input == "list"
          puts @CookBook.sort
        elsif user_input == "add"
            ask_user_add_recipe
        elsif user_input == "dell"
        e
        else "please enter the corret keyword"
        puts TASKS.values
        end
    end

  # The dispatch method takes a String or a Symbol as an argument
  # and calls the method with the same name.
  #
  #  Examples:
  #
  #   dispatch(:del) => Will call the `del` method in the current class
  #   dispatch("add") => Will call the `add` method in the current class
  #
  # To understand this, read the doc : http://ruby-doc.org/core-2.1.1/Object.html#method-i-send



#     # TODO: Get the user input and return it
#     # [OPTIONAL] You can think of the case where the user
#     # enters a wrong choice.
#   end




end


def ask_user_add_recipe
    puts "Please enter a name for your new recipe ?"
    recipe = gets_chomp.to_s
    add_recipe(recipe)
end

def ask_user_del_recepe
    puts @CookBook.sort_with_index
    puts "Please enter the index for the recipe to delete ?"
    index = gets_chomp.to_s
    remove_recipe(index)
end



#   def initialize(controller)
#     @controller = controller
#     @running = true
#   end

#   def list
#     # TODO: call the appropriate controller method with the proper argument(s)
#     # TODO: format and display the retrieved data in a numbered list
#   end

#   def add
#     # TODO: ask the user a recipe name
#     # TODO: call the appropriate controller method with the proper argument(s)
#   end

#   def del
#     # TODO: ask the user a recipe index
#     # TODO: call the appropriate controller method with the proper argument(s)
#   end

#   def exit
#     # TODO: exit the program
#     # Hint: Take a look at the display method !
#   end

#   def user_input
#     # TODO: Get the user input and return it
#     # [OPTIONAL] You can think of the case where the user
#     # enters a wrong choice.
#   end

#   def display
#     puts "-- Welcome to the CookBook --"

#     while @running
#       print "\n"

#       display_tasks
#       dispatch(user_input)

#       print "\n"
#     end
#   end

#   ###
#   ##  You don't need to modify the following methods !
#   ###

# end
