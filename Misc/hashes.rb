# Dictionaries/hashes
# Basic dictionary
dict = {'a' => 1, 'b' => 2, 'c' => 3}
p dict['a']

# Alternate definition
dict = {a:1,b:2,c:3}
# a, b, and c are automatically defined as Symbols in this dict because 
# they were not surrounded with quotes. Stil behave the same as
# above
p dict[:a]

# Get keys/values
p dict.keys
p dict.values

# iterate over dict
dict.each do |k, v|
    puts "key: #{k}, value: #{v}"
end

# Add element to dict
dict[:d] = 4
p dict

# Mutate dict object
dict[:c] = 5
p dict

# One line iteration
dict.each {|k, v| p"#{k}, #{v}"}

# Select item where value is 5
a = dict.select {|k, v| v.even?}
p a 

# Delete all odd items from hash
dict.each {|k,v| dict.delete(k) if v.odd?}
p dict

