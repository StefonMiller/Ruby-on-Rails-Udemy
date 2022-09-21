# This homework assignment prompts the user for a first and last 
# name. It stores these values in variables, then outputs them to the user
# in the same order, and then backwards. Finally, it outputs the number
# of characters in the name, not including spaces

# Get user first name and last name
puts "Please enter your first name:"
first_name = gets.chomp
puts "Please enter your last name:"
last_name = gets.chomp

# Print full name 
puts "Your full name is #{first_name} #{last_name}"
# Print full name using reverse!
puts "Your full name reversed is #{first_name.reverse!} #{last_name.reverse!}"
# Print total char count
puts "Your name has #{first_name.size + last_name.size} characters in it"