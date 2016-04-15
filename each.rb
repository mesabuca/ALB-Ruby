def multiplicate (odds)
    #odds = [1,3,5]

    odds.each do |num|
    num *= 2
    puts "#{num}"
end

end

array=Array.new

puts "Enter three number"
i=0
until i==3
    array[i]=gets.chomp.to_i
    i+=1
end 

#ali=[1,3,5]

multiplicate(array)

=begin
    and also we can use 

    array.each{|num| puts num*2}

    like that

=end
