def delete
  rlist = File.open("Contact/list.txt", 'r')
  newlist = File.open("Contact/newlist.txt", 'w')

  while true

    print "Name    : "
    name = gets.chomp.capitalize
    print "Surname : "
    surname = gets.chomp.capitalize

    unless File.exist?("Contact/#{name}#{surname}.txt")
      puts "There is no one like #{name} #{surname}."
      break
    end

    rlist.readlines.each do |lines|
      line = lines.split
      if line[0] != name && line[1] != surname
        newlist.puts "#{line[0]} #{line[1]}"
      end
    end
    File.delete("Contact/#{name}#{surname}.txt")
    break
  end

end


