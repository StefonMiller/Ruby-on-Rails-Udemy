# Int comparison
puts 10 == 9
puts 10 == 10

# Float comparison also true
puts 10 == 10.0

# Object comparison evaluated by value implicityl, not reference
puts "hello" == "hello"

# eql? compares data types
puts 10.eql?(10.0)
puts "hello".eql?("hello")