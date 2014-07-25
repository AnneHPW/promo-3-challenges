require 'sqlite3'

# opens the database
database_path = File.join(File.dirname(__FILE__), 'db/jukebox.sqlite')
db = SQLite3::Database.new(database_path)

def number_of_rows(db, table_name)
  sql_query = "SELECT COUNT(*) FROM #{table_name}"
  row_count = db.execute(sql_query).flatten[0]
  p row_count

end

def sorted_artists(db)
  sql_query = "SELECT Name FROM Artist ORDER BY Name ASC"
  sort_artist = db.execute(sql_query).flatten
  #TODO: return array of artists' names sorted alphabetically
end

def love_tracks(db)
  sql_query = "SELECT Name FROM Track WHERE Name LIKE '%love%'"
  display_love_tracks = db.execute(sql_query).flatten
  #TODO: return array of love songs
end

# love_tracks = love_tracks(db)
# love_tracks.each do |love_track|
#   puts "- #{{love_track}"

def long_tracks(db, min_length)
  min_length = min_length * 60000
  db.execute("SELECT Name FROM Track WHERE Milliseconds > #{min_length}").flatten
  #TODO: return tracks verifying: duration > min_length (minutes)
end
