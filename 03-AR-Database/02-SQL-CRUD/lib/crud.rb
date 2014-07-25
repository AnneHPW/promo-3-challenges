require 'sqlite3'

def create_scheme(db)
  #TODO: create your db scheme
  sql = %q{ CREATE TABLE IF NOT EXISTS blog
    (id INTEGER PRIMARY KEY AUTOINCREMENT,
      name VARCHAR(100),
      rating INT,
      source_url VARCHAR(255),
      date DATE)
  }  # %q allows for multiline string in ruby
  db.execute(sql)
end

def create_post(db, post)
  querie_new_post = ("INSERT INTO blog (name, rating, source_url, date)
              VALUES ('#{post[:name]}', '#{post[:rating]}', '#{post[:source_url]}', '#{post[:date]}')")
  #display_new_post = ("SELECT * FROM blog ORDER BY ID DESC LIMIT 1")
  db.execute(querie_new_post)
  #db.execute(display_new_post)

end

def get_posts(db)
  db.execute("SELECT * FROM blog")
   #TODO: list all posts
end

def get_post(db, id)
  db.execute("SELECT * FROM blog WHERE id = #{id}")
end

def update_post(db, id, name)
  db.execute("UPDATE blog SET name = '#{name}' WHERE id = #{id}")
  #TODO: update a post's name in your db
end

def delete_posts(db)
    db.execute("DELETE FROM blog")
end

def delete_post(db, id)
  db.execute("DELETE FROM blog
            WHERE id = #{id}")
  #TODO: delete a specific post in your db
end

