# Ruby import statement 
require 'bcrypt'

# Create hash of password + salt
my_password = BCrypt::Password.create("my password")


puts my_password
puts my_password.version              #=> "2a"
puts my_password.cost                 #=> 10

# Can compare this to plaintext without comprimising any information
puts my_password == "my password"     #=> true
puts my_password == "not my password" #=> false

# $2a$12$vharZurc1SntKNrm377lmuWINEKOx0cxpXI59NA41eeF/olNYNjeW
# stored in db. Can load this hashed value into Bcrypt and
# it will be able to authenticate successfully
test = BCrypt::Password.new("$2a$12$vharZurc1SntKNrm377lmuWINEKOx0cxpXI59NA41eeF/olNYNjeW")
puts test == "my password"     #=> true
puts test == "not my password" #=> false
 
my_password1 = BCrypt::Password.create("my password")

# Hashes of same pw are different due to salting
puts my_password = my_password1

