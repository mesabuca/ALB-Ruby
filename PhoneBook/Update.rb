def update
  while true
    puts "Who do you want to update ?"
    puts "Name    :"
    name = gets.chomp.capitalize
    puts "Surname :"
    surname = gets.chomp.capitalize

    unless File.exist?("#{name}#{surname}.txt")
      puts "There is no one like #{name} #{surname}"
      break
    end


    change = File.open("#{name}#{surname}.txt",'w')
    puts "Phone   :"
    change.puts "#{gets.chomp}"
    puts "Email   :"
    change.puts "#{gets.chomp}"

    break
  end
end
