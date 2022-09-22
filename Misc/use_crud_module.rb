# Import file within directory
require_relative "crud"

# Will also work:
# $LOAD_PATH << "."
# load "crud"

users = [
    {username: "Stefon", password: "cats33"},
    {username: "Emily", password: "bean"},
    {username: "Barb", password: "smoke"},
    {username: "Mike", password: "beer"}
]

# Call external module method
hashed_users = Crud.secure_user_passwords(users)
puts hashed_users