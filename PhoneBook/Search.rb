def search
  while true
    puts "Who do you want to search"
    puts "Name    :"
    name = gets.chomp.capitalize
    puts "Surname :"
    surname = gets.chomp.capitalize

    unless File.exist?("Contact/#{name}#{surname}.txt")
      puts "There is no one like #{name} #{surname} "
      break
    end

    File.open("Contact/#{name}#{surname}.txt",'r').readlines.each do |line|
      puts line
    end
    break
  end
end