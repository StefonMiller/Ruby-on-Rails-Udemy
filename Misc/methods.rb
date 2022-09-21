# method to multiply 2 numbers
def mult(num1, num2)
    # Ruby automatically returns last line in method if no return specified
    num1.to_f * num2.to_f
end

# Methods need to be declared before the call 
puts mult(3, 9)