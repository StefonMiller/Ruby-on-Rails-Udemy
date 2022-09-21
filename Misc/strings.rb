# Starting string
sentence = "My name is"

puts sentence

# Concatenation
puts sentence + " Stefon"

# Concatenate variables

first_name = "Stefon"
last_name = "Miller"

puts sentence + " " + first_name + " " + last_name

# String interpolation. Does NOT work with single quotes
puts "#{sentence} #{first_name} #{last_name}. Hello!"

# Determine class from variable
puts sentence.class

# Can even work on primitives!
puts 1.class

# Gets methods for a certain class
# puts sentence.methods

# Vars are not implicitly cast during print, unless the only thing being printed
puts 10 # works
# puts "Test" + 10 doesn't work

# Type cast int to str
puts "Test " + 10.to_s

string = "My name is test"
# String substitution, note that the method is only evaluated after string is printed in the first line
puts string.sub("test", "Stefon")
puts string

# Starting variable
test1 = "test 1"
# Shared addressing, test1 and 2 point to same address
test2 = test1
puts "Before #{test1} id #{test1.object_id}"
puts "Before #{test2} id #{test2.object_id}"

# Objects are immutable, setting this value changes the object ID for test1 here
test1 = "test 3"

# test2 still points to original ID of test1
puts test1
puts "After #{test1} id #{test1.object_id}"
puts test2
puts "After #{test2} id #{test2.object_id}"

# Escape sequences
puts "Printing test1 value \#{test1}"

