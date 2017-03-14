class FizzBuzz
  (1..100).each do |number|
    puts 'Fizz' if number % 3 == 0
    puts 'Buzz' if number % 5 == 0
    puts 'FizzBuzz'
  end
end
