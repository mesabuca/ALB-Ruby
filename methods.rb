print "What's your first name?"
name = gets.chomp
name.capitalize!

print "What's your last name?"
surname = gets.chomp
surname.capitalize!

print "What city are you from?"
city = gets.chomp
city.capitalize!

print "What state or province are you from?"
state = gets.chomp
state.upcase!

puts "Your name is #{name} #{surname} and you're from #{city}, #{state}!"
