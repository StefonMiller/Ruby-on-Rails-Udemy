# This program promps the user for a city to find the area code for
# and then returns the correcponding code using the predefined dicitonary

dial_book = {
    "newyork" => "212",
    "newbrunswick" => "732",
    "edison" => "908",
    "plainsboro" => "609",
    "sanfrancisco" => "301",
    "miami" => "305",
    "paloalto" => "650",
    "evanston" => "847",
    "orlando" => "407",
    "lancaster" => "717",
}

# Get city names from the hash
def get_city_names(somehash)
  somehash.keys
end

# Get area code based on given hash and key
def get_area_code(somehash, key)
  somehash[key]
end

# Execution flow
loop do
  # Determine whether to continue
  puts "Do you want to look up an area code based on city name(y/n)?"
  choice = gets.chomp

  # Break if user doesn't say yes
  break if choice.downcase != "y"
  # Display cities and let user pick
  puts "Which city do you want the area code for?"
  cities = get_city_names(dial_book)
  cities.each {|city| puts city}
  puts "Please enter one of the above cities:"
  city_choice = gets.chomp

  # Check if user choice is in the list of cities
  if cities.include? city_choice
    # Pull area code for city if valid
    code = get_area_code(dial_book, city_choice)
    puts "The area code for #{city_choice} is #{code}"
  else
    puts "Invalid city"
  end
end

puts "Have a great day"