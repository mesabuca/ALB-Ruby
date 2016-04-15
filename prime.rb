def prime(n)
is_prime = true
  for i in 2..n-1
    if n % i == 0
      is_prime = false
    end
  end
  if is_prime
    puts "#{n} is prime!"
  else
    puts "#{n} is not prime."
  end
end


loop do
    while true 
      puts "Enter a number. Enter 0 to exit"
      input = gets.chomp
      if input.to_i.to_s == input
	 num = input.to_i
	 break
      else
      puts "That's not an integer."
      end
    end

    if num == 0
        break
    end
    prime(num)
end

