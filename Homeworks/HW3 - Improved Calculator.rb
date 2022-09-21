# This program improves on the calculator in HW 2, moving the actual calculations
# to functions and prompting for user input for the type of operation to perform

# Calculation functions
def multiply(num1, num2)
    num1.to_i * num2.to_i
end

def mod(num1, num2)
    num1.to_i % num2.to_i
end

def divide(num1, num2)
    num1.to_i / num2.to_i
end

def add(num1, num2)
    num1.to_i + num2.to_i
end

def subtract(num1, num2)
    num1.to_i - num2.to_i
end

# Get numbers and operation choice
puts "Welcome to my calculator:"
25.times {print "-"}
print "\n"
puts "Enter the first number"
num1 = gets.chomp
puts "Enter the second number:"
num2 = gets.chomp
puts "Please enter the operation to perform\n\t-1 for addition\n\t-2 for subtraction\n\t-3 for multiplication\n\t-4 for division\n\t-5 for modulus"
choice = gets.chomp

# Logic branching and input validation
if choice.to_i == 1
    puts add(num1, num2)
elsif choice.to_i == 2
    puts subtract(num1, num2)
elsif choice.to_i == 3
    puts multiply(num1, num2)
elsif choice.to_i == 4
    puts divide(num1, num2)
elsif choice.to_i == 5
    puts mod(num1, num2)
else
    puts "Invalid entry"
end