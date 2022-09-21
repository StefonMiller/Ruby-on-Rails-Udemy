# Ruby uses traditional if/else logic. Statements must have an "end" to terminate
var = rand(2)

if var == 1
    puts "True"
else
    puts "False"
end

# Multi condition checking in 1 statement
# And
if true && true
    puts "True"
end
#Or
if true || false
    puts "True"
end

# If/else if/else
var = rand(3)
if rand == 0
    puts "0"
elsif rand == 1
    puts "1"
else
    puts "2"
end

# Can also use switch statements
