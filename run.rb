require "mysql2"    # if needed

@db_host  = "localhost"
@db_user  = "root"
@db_pass  = "root"
@db_name = "MyDatabase"

client = Mysql::Client.new(:host => @db_host, :username => @db_user, :password => @db_pass, :database => @db_name)
@cdr_result = client.query("SELECT * from people")