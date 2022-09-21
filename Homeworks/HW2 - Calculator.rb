# This program contains the 4 basic functions of a calculator
# Addition, subtraction, division, and multiplication, along
# with modulus as well. It takes 2 numbers as user input and 
# uses them for calculations

puts "Welcome to my calculator:"
25.times {print "-"}
print "\n"
puts "Enter the first number"
num1 = gets.chomp
puts "Enter the second number:"
num2 = gets.chomp

puts "The fist number plus the second: #{num1.to_i + num2.to_i}"
puts "The fist number minus the second: #{num1.to_i - num2.to_i}"
puts "The fist number times the second: #{num1.to_i * num2.to_i}"
puts "The fist number divided by the second: #{num1.to_i / num2.to_i}"
# Can also use num1.remainder(num2)
puts "The fist number modulus the second: #{num1.to_i % num2.to_i}"
