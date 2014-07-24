require 'sqlite3'

# opens the database
database_path = File.join(File.dirname(__FILE__), 'db/jukebox.sqlite')
db = SQLite3::Database.new(database_path)

def number_of_rows(db, table_name)

  row_count = db.execute("SELECT COUNT(*) FROM #{table_name}").flatten[0]

end

def sorted_artists(db)
  db.execute("SELECT name FROM artist ORDER BY name ASC").flatten
  #TODO: return array of artists' names sorted alphabetically
end

def love_tracks(db)
  db.execute("SELECT name FROM track WHERE name LIKE '%love%'").flatten
  #TODO: return array of love songs
end

def long_tracks(db, min_length)
  min_length = min_length * 60000
  db.execute("SELECT name FROM track WHERE Milliseconds > #{min_length}").flatten
  #TODO: return tracks verifying: duration > min_length (minutes)
end
