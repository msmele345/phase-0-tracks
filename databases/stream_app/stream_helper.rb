##Netflix/Amazon Streaming Choice Selector

#Require Gems
require 'sqlite3'
require 'faker'

#Create database

db = SQLite3::Database.new("streaming_data.db")
db.results_as_hash = true

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

def user_data(db, name, password, fav_genre)
  db.execute("INSERT INTO streamer (name, password, fav_genre) VALUES (?, ?, ?)", [name, password, fav_genre])
end

def pick_movie

end

#BUILD TABLES
#Use combination of UM songs and movie quotes to generate movie names
#Attach randomly generated genre to each name
#Attach randomly generated star rating

# 60.times do
#   genres = ["Action","Comedy", "Drama", "Sci_fi", "Documentary"]
#   create_movie(db, Faker::Movie.unique.quote , genres[rand(0..4)] , rand(1..5))
# end

# 11.times do
#   genres = ["Action","Comedy", "Drama", "Sci_fi", "Documentary"]
#   create_movie(db, Faker::UmphreysMcgee.song , genres[rand(0..4)] , rand(1..5))
# end



##Next steps
# 1. Continue to build UI with tests. Account for bad input with if/else select random if bad input for category?
    # -Build match method that iterates over data and returns the users request(specific move to avoid add)
    # -Find way to display relevent match data. Use Join db tables for this. Research.



#ORM retrieving data

# search = db.execute("SELECT * FROM selections WHERE stars=4")
# p search
# search.each do |movie|
#   if "#{movie['genre']}" == "Sci_fi"
#     puts "#{movie['title']}"
#   end
# end



###USER INTERFACE

  user_info = []

  puts "Welcome to the Chill starter"
  puts()
  puts "What is your name?"
  user_name = gets.chomp
  user_info << user_name
  puts()
  puts "What is your password?"
  pwd = gets.chomp.to_i
  user_info << pwd
  puts()
  puts "What are you in the mood for tonight?"
  category = gets.chomp
  user_info << category

p user_info

user_data(db, user_name, pwd, category)
