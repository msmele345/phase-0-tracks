# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
##Release 0 QUESTION 1
#http://localhost:9393/contact
get '/contact' do
  "111 East Mulberry Lane Dallas, TX 54132"
end

## RELEASE 0  QUESTION 2
#http://localhost:9393/great_job?name=Mitch
#Query Parameter example
get '/great_job' do
  name = params[:name]
  if name
    "Good job, #{name}!"
  else
    #http://localhost:9393/great_job
    "Good Job!"
  end
end

## RELEASE 0 QUESTION 3
#http://localhost:9393/add/6/3
get '/add/:num1/:num2' do
  num1 = params[:num1]
  num2 = params[:num2]
  result = num1.to_i + num2.to_i
  "#{num1} is going to be added to #{num2}. The sum of these two numbers is #{result}!"
end

# http://localhost:9393/?name=Mitch&age=31
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# OPTIONAL BONUS ROUTES

get '/ages/:age' do
  age_check = db.execute("SELECT * FROM students WHERE age=?", [params[:age]])
  age_check.to_s
end

get "/campus/:campus" do
  campus_list = db.execute("SELECT * FROM students WHERE campus=?", [params[:campus]])
  campus_list.to_s
end


# write a GET route with
# route parameters
#ROUTE PARAMETER EX
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end