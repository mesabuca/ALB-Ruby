unless File.exist?("Contact/list.txt")
  File.open('Contact/list.txt','w')
end

load 'Add.rb'
load "Delete.rb"
load "Display.rb"
load "Search.rb"
load "Sort.rb"
load "Update.rb"


while true
    puts "Add -- Add a person \nDelete -- Delete a person\nDisplay -- Display all people\nSearch -- Search a name\nUpdate -- Update a person"
    print "Chose : "
    process = gets.chomp.downcase

    case process
      when "add"
        add
        sort
      when "delete"
        delete
        sort
      when "update"
        update
      when "display"
        display
      when "search"
        search
      else
        puts "Wrong input !"
    end

  print "Do you want to continue ? y/n"
  if gets.chomp.downcase == "n"
    break
  end

end

