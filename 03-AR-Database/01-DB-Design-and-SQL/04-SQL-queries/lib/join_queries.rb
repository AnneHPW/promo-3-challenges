require 'sqlite3'

# opens the database
DATABASE_PATH = "db/jukebox.sqlite"
db = SQLite3::Database.new(DATABASE_PATH)

def detailed_tracks(db)
  db.execute("SELECT track.name, artist.name, album.name
              FROM track
              JOIN artist ON (track.artist_id = artist_id)
              JOIN album ON (track.album_id = album_id)")
  # TODO: return the list of tracks with their album and artist
end

def stats_on(db, category)
  number_of_songs = db.execute("SELECT COUNT(*)
              FROM track
              JOIN genre ON (track.genre_id = genre.genre_id)
              WHERE genre.name = #{category}")
  average_lenght = db.exe("SELECT AverageMillimeters
              FROM track
              JOIN genre ON (track.genre_id = genre.genre_id)
              WHERE genre.name = #{category}")
  hash = Hash.new
  hash[:category] = category
  hash[:number_of_songs] = number_of_songs
  hash[:average_lenght] = average_lenght
  return hash
end

  # category.each do|category,number_of_songs|
  # puts "#{category}, #{number_of_songs}: #{average_lenght}"

  #TODO: For the given category of music, return the number of tracks and the average song length (as a stats hash)

def top_five_rock_artists(db)
  genre = "rock"
  array = rock_artist_names
  rock_artist_names = db.execute("SELECT artist.name, COUNT(*) occurences
                                  FROM artist
                                  JOIN album ON album.artist_id = artist.artist_id
                                  JOIN track ON track.genre_id = genre.genre_id
                                  AND genre.name = #{genre}
                                  GROUP BY artist.name
                                  ORDER BY occurences DESC
                                  LIMIT 5")
  rock_artist_names.map { |result| = [0] }

  #TODO: return list of top 5 rock artists
end