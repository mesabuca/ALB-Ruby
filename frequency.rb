puts "Enter a text: "
text = gets.chomp

words = text.split(" ")

frequencies = Hash.new(0)

words.each {|word| frequencies[word.downcase] += 1}
frequencies= frequencies.sort_by{|a,b| b}
frequencies.reverse!
frequencies.each {|word, count| puts " '#{word}' repeated  #{count} times."}

