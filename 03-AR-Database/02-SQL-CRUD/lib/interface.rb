require_relative "crud"

def ask_and_get(param)
  puts "What is the #{param} for your post?"
  gets.chomp
end


def get_post_id
  puts "Please enter post id : "
  print "> "
  gets.chomp.to_i
end

db_path = "db/news.sqlite"
db = SQLite3::Database.new(db_path)

create_scheme(db)

while true

  puts "Hey you, what do you want to do today? Enter <task_id>"
  puts "1. Create a post"
  puts "2. Read your posts"
  puts "3. Delete all posts"
  puts "4. Read a post"
  puts "5. Change the title of one post"
  puts "6. Delete a post"
  puts "7. Exit"

  # TODO: add other CRUD tasks if you wish!
	choice =  gets.chomp.to_i

	case choice
    when 1
      name = ask_and_get("name")
      source_url = ask_and_get("source url")
      rating = ask_and_get("rating")
      post = { name: name, source_url: source_url, date: Time.now, rating: rating }
      puts create_post(db, post)
    when 2
      posts = get_posts(db)
      posts.each do |post|
        puts
        puts "==============="
        puts "Id: #{post[0]}"
        puts "Name: #{post[1]}"
        puts "Source URL: #{post[2]}"
        puts "Date: #{post[3]}"
        puts "==============="
        puts
      end
    when 3
      delete_posts(db)
    when 4
      id = get_post_id
      puts get_post(db, id)
    when 5
        id = get_post_id
        puts "Please enter the new title : "
        print "> "
        name = gets.chomp
        update_post(db, id, name)
    when 6
        id = get_post_id
        delete_post(db, id)
    when 7
      exit()
    break
	end

end