print "Enter a text:  "
user_input = gets.chomp
user_input.downcase!

puts "Is there any place to fix ? y/n"
answer = gets.chomp

    if answer == "y"

    puts "Enter what will fixed and what will be"
    fix = gets.chomp
    fixed = gets.chomp

	if user_input.include? "#{fix}"
   	user_input.gsub!(/#{fix}/, "#{fixed}")
    	else
     	puts "Nothing to do here!"
   	end

    end
  
puts "Your string is: #{user_input}"
