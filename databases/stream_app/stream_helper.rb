## Streaming devices "Chill" Selector. App helps the user avoid wasting time scrolling through dozens of "suggested titles" that most streaming apps offer and makes a selection for you based of user provided genre preference.

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

store_data = <<-SQL
  CREATE TABLE IF NOT EXISTS data (
   id INTEGER PRIMARY KEY,
   name VARCHAR(255),
   title_match VARCHAR(255),
   actually_watched BOOLEAN,
   user_rating INT
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
db.execute(store_data)
db.execute(movies)

#TEST with people and movies

# db.execute("INSERT INTO selections (title, genre, stars) VALUES ('The Rock', 'Action', 4)")
# db.execute("INSERT INTO selections (title, genre, stars) VALUES ('Trading Places', 'Comedy', 3)")

##USE FAKER TO GENERATE MANY MOVIE names to build selections table

#Use combination of UM songs and movie quotes to generate movie names
#Attach randomly generated genre to each name
#Attach randomly generated star rating to each title

#BUILD MOVIE DATABASE

# 25.times do
#   genres = ["Action","Comedy", "Drama", "Sci_fi", "Documentary"]
#   create_movie(db, Faker::Movie.unique.quote , genres[rand(0..4)] , rand(1..5))
# end

# 25.times do
#   genres = ["Action","Comedy", "Drama", "Sci_fi", "Documentary"]
#   create_movie(db, Faker::UmphreysMcgee.song , genres[rand(0..4)] , rand(1..5))
# end

#DRIVER METHODS

def create_movie(db, title, genre, stars)
  db.execute("INSERT INTO selections (title, genre, stars) VALUES (?, ?, ?)", [title,genre, stars])
end

def user_data(db, name, password, fav_genre)
  db.execute("INSERT INTO streamer (name, password, fav_genre) VALUES (?, ?, ?)", [name, password, fav_genre])
end

def user_feedback(db, name, title_match, actually_watched, user_rating )
  #data = db.execute("INSERT JOIN COMMAND HERE") ?? !
  db.execute("INSERT INTO data (name, title_match, actually_watched, user_rating) VALUES (?, ?, ?, ?)", [name, title_match, actually_watched, user_rating])
end

#Pass in user preferences for category into pick movie method
#assign a search all to variable
#iterate over selections table
  #If the user_pref equals the genre key , push the movie title into matches array
#return random element in the array. This is the key feature! No wasting time scrolling through endless suggestions

def pick_movie(db,user_pref)
  matches = []
  search = db.execute("SELECT * FROM selections")
    search.each do |movie|
      if "#{movie['genre']}" == user_pref
        matches << "#{movie['title']}"
      end
    end
   pick = matches.sample
   puts "You are now watching...#{pick}"
   pick
end



#Test ORM

# search = db.execute("SELECT * FROM selections WHERE stars=4")
# p search


###USER INTERFACE

#Call user_data method to insert user data demographic information in db and identify which genre of a movie they want to watch tonight

#Call pick_movie method to iterate over selections table and find a list of movies that meet the user criteria for a genre. Instead of giving the user a long list of movies to have to scroll through and decide, the method returns a random selection and starts the movie right away.

#Ask the user for feedback and a rating of the movie. This data could be analyzed in the future to manage titles based on popularity, provide a viewer review comparison w/the critic review (in the selections table), and help the app determine if the auto-selected movies are even being watched after being started (did the user like or not like that automatic pick). This could help in managing selections inventory.

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
puts "What type of movie are you in the mood for tonight?"
  category = gets.chomp
  user_info << category

# p user_info

user_data(db, user_name, pwd, category)
app_selection = pick_movie(db,category)

#Ask for feedback from the user. If feedback is provided, call the user_feedback method to store information in data table.
puts "Would you mind taking a super short survey?"
  survey = gets.chomp
  if survey == "Yes"
      puts "Thank you."
      puts "Did you actually watch the movie we suggested (True, False)"
          watched_movie = gets.chomp
      puts "How would you rate the movie on a scale of 1-5, with 5 being the highest rating possible?"
          user_rating = gets.chomp.to_i
          user_feedback(db, user_name, app_selection, watched_movie, user_rating)
          puts "We appreciate the feedback! Hope to see you in the Chill again soon!"
  else
      puts "Thank you for using the Chill Starter! Happy streaming!"
end
