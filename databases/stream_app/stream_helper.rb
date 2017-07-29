##Netflix/Amazon Streaming Choice Selector

#Require Gems
require 'sqlite3'
require 'faker'

#Create database

db = SQLite3::Database.new("streaming_data.db")

#Use string delimiters to build tables

customer = <<-SQL
  CREATE TABLE IF NOT EXISTS streamer (
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    password INT,
    fav_genre VARCHAR(255)
)
SQL

matcher = <<-SQL
  CREATE TABLE IF NOT EXISTS matcher (
    id INTEGER PRIMARY KEY,
    match_details VARHCAR(255),
    watched BOOLEAN,
    streamer_id INT,
    selections_id INT,
    FOREIGN KEY (streamer_id) REFERENCES streamer(id),
    FOREIGN KEY (selections_id) REFERENCES selections(id)
  )
SQL

movies = <<-SQL
  CREATE TABLE IF NOT EXISTS selections (
    id INTEGER PRIMARY KEY,
    title VARCHAR(255),
    genre VARCHAR(255),
    stars INT
  )
SQL


#Create tables
db.execute(customer)
db.execute(matcher)
db.execute(movies)

#TEST with people and movies


# db.execute("INSERT INTO selections (title, genre, stars) VALUES ('The Rock', 'Action', 4)")
# db.execute("INSERT INTO selections (title, genre, stars) VALUES ('Trading Places', 'Comedy', 3)")


##USE FAKER TO GENERATE MANY MOVIE names
##Assign each moving name to a genre?
def create_movie(db, title, genre, stars)
  db.execute("INSERT INTO selections (title, genre, stars) VALUES (?, ?, ?)", [title,genre, stars])
end


#Use combination of UM songs and movie quotes to generate movie names
#Attach randomly generated genre to each name
#Attach randomly generated star rating

25.times do
  genres = ["Action","Comedy", "Drama", "Sci_fi", "Documentary"]
  create_movie(db, Faker::Movie.quote , genres[rand(0..4)] , rand(1..5))
end

11.times do
  genres = ["Action","Comedy", "Drama", "Sci_fi", "Documentary"]
  create_movie(db, Faker::UmphreysMcgee.song , genres[rand(0..4)] , rand(1..5))
end

#ORM retrieving data
#assign execute call to variable name
#iterate over movie names and assign a genre


