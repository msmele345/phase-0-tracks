##SECRET APP


#Require ruby gems after installing them

require 'sqlite3'
require 'faker'



db = SQLite3::Database.new("app_data.db")
db.results_as_hash = true

#APP will take savings account dollar amount as user data
#Total savings amount will be

##USERS (PEOPLE ) and passwords will be the two tables



people = <<-SQL
  CREATE TABLE IF NOT EXISTS people (
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    userid VARCHAR(255),
    old_password INT
)
SQL

db.execute(people)

db.execute("INSERT INTO people (name, userid,old_password) VALUES ('Mitch', 'msmele', 345)")

users = db.execute("SELECT * FROM people")
users.class
p users

## make passwords table
##find way to join both
#send notification to user?