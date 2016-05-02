
def sort
  newlist = File.open("Contact/newlist.txt","r").sort
  list = File.open("Contact/list.txt","w")


  newlist.each do |lines|
    list.puts "#{lines}"
  end
  File.delete "Contact/newlist.txt"

end


=begin
newlist.readlines.each do |lines|
    line = lines.split
    if line[0] != name && line[1] != surname
      newlist.puts "#{line[0]} #{line[1]}"
    end
  end

=end