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


