require 'sqlite3'

 db = SQLite3::Database.new("db/db.sqlite")

 # #2
 db.execute <<-SQL
     CREATE TABLE book (
       id INTEGER PRIMARY KEY,
       name VARCHAR(30),
       author VARCHAR(30),
       pages INTEGER
     );
   SQL
