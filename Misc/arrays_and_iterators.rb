# puts prints each element on 1 line
a = [1,2,3,4,5,6,7,8,9]
puts a

# p prints array as-is
p a

# can use .last or [-1] for last element in array
puts a.last
puts a[-1]

# Range object creation
x = 1..100
puts x.class 

# Convert range to array
# Can assign variables in p statement
p x=x.to_a

# Randomize order. ! at end of statement mutates caller
# (stores otuput in x)
x.shuffle!
p x

# Can also use range for chars
x = "a".."z"
p x=x.to_a

# Get length of array
p x.length

# Append to end of array
a.append(10)
p a

# Insert into first index of array
a.unshift(0)
p a

# Remove unique values from array
a.append(10)
p a
a.uniq!
p a

# Check if arr is empty
p a.empty?

# Check if item in array
p a.include?(10)

# Insert into end with push
a.push(11)
p a

# Remove last element in array
a.pop
p a

# Convert array into string
puts a.join(", ")

# String into array
test = "1,2,3,4,5,6,7,8,9"
b = test.split(",")
p b

# Create array from whatever you pass in
arr = %w(1 2 3 4 5  7 8 9 0)
p arr

# Basic for loop
for item in arr
    print item
end

puts

# Preffered way to iterate through array of objects on 1 line
arr.each {|item| print item}

puts

# Select operator. Only returns objects that evaluate to true for the boolean expression 
c = (1..100).to_a.shuffle!
odd_nums = c.select {|num| num.odd?}
p odd_nums