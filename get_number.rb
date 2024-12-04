# Get My Number Game
# Written by: you!
target = rand(100) + 1
num_guesses = 0
is_guess_correct = false

puts "Welcome to 'Get My Number!'"
print "What's your name? "
input = gets
name = input.chomp
puts "Welcome, #{name}!"
puts "Guess a number between 1 and 100."

until num_guesses < 10 || is_guess_correct
  puts "#{10 - num_guesses} guesses left"
  num_guesses += 1

  print "Guess: "
  guess = gets.to_i

  if guess < target
    puts "your guess was too low"
  elsif guess > target
    puts "Your guess wass to high"
  elsif guess == target
    puts "You got it #{name}"
    is_guess_correct = true
  end
end

unless is_guess_correct
  puts "Sorry. You ran out of guesses (#{target})"
end
