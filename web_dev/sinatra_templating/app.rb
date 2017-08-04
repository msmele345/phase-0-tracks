# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

#New database (For exploration) for new campus feature
db = SQLite3::Database.new("students.db")
db2 = SQLite3::Database.new("campuses.db")
db.results_as_hash = true
db2.results_as_hash = true

campus_data = <<-SQL
  CREATE TABLE IF NOT EXISTS campus (
    id INTEGER PRIMARY KEY,
    location VARCHAR(255)
  )
SQL


# show students on the home page
#This creates a basic html page
#ERB = embetted ruby. Html w/ruby behavior
#ERB files live in the views folder

get '/' do
  @students = db.execute("SELECT * FROM students")
  @campuses = db2.execute("SELECT * FROM campus")
  erb :home
end
#Keep @campuses on home page b/c we will be viewing its data there
get '/students/new' do
  erb :new_student
end

##RELEASE 1 and 2
get '/campuses/new' do
  erb :add_location
end

#post name can be database name
post '/campuses' do
  db2.execute("INSERT INTO campus (location) VALUES (?)", params['location'].to_s)
  redirect '/'
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

# add static resources


##DRIVER CODE

db2.execute(campus_data)