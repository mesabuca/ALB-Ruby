def display

  list = File.open("Contact/list.txt",'r').sort
  list.each do |lines|
    line = lines.split
    File.open("Contact/#{line[0]}#{line[1]}.txt",'r').readlines.each do |infor|
      puts "#{infor}"
    end
    puts "--------------"
  end

end
