def increaser (grades=Array.new, plus)
    grades.each { |grade| grade+plus }
    return grades
end



def averageOfSum (grades, population)

sum = 0

i = 0
  while i == population - 1
     sum += grades[i]
  end

average = sum/population

 return average
end




class_one = Array.new

#def class_one
#	cls1 = Array.new
#end

print "Enter population of class: "
population = gets.chomp.to_i

i = 0
until i == population
  puts "no:#{i+1}   "
  class_one[i] = gets.chomp.to_i
  i += 1
end

average = averageOfSum(class_one, population)


  if average < 50

    plus = 50 - average

    class_one = increaser(class_one, plus)
  end


i = 0
until i = population - 1
    puts "#{class_one}"
    i += 1
end
