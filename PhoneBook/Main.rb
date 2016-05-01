unless File.exist?("phonebook.txt")
  File.open('phonebook.txt', 'w')
end
load "Add"
load "Delete"
load "Display"
load "Search"
load "Sort"
load "Update"

puts "Add -- Add a person \nDelete -- Delete a person\nDisplay -- Display all people\nSearch -- Search a name\nUpdate -- Update a person"

process = gets.chomp.downcase

case process
  when add

end