def add
  out = Integer
  while true
    print "Name    : "
    name = gets.chomp.capitalize
    print "Surname : "
    surname = gets.chomp.capitalize
    f = File.open("Contact/#{name}#{surname}.txt", 'w')
    list = File.open("Contact/list.txt", 'a')
    rlist = File.open("Contact/list.txt", 'r')


    rlist.readlines.each do |lines|
      line = lines.split
      if line[0] == name && line[1] == surname
        puts "There is already a person like #{name} #{surname}."
        puts "If you want to change it use update."
        out = 1       # This is for breaking main while loop
        break
      end
    end
    if out == 1
      break
    end


      print "Phone No : "
    pno = gets.chomp
    print "E-mail adress : "
    email = gets.chomp
    list.puts "#{name} #{surname}"
    f.puts "#{name} #{surname}"
    f.puts "#{pno}"
    f.puts "#{email}"
    f.close
    list.close
    break
  end
end


add

