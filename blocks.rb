def my_method(&my_block)
  puts "Method init"
  my_block.call
  puts "Back in method"
end

# No need to explicitly run method
my_method do
  puts "We in block"
end

# runs containing method again
my_method do
  puts "Wohoo"
end

#####
def give(&my_block)
  my_block.call("turtles", "doves")
end

# Block w parameters
give do |present1, present2|
  puts "my method gave me"
  puts present1, present2
end

# Yield

def twice
  yield "dog"
  yield "cat"
end

twice do |animal|
  puts "i hear a #{animal}"
end

# Braces (good idea?)

def take_this
  yield "present"
end

take_this do |thing|
  puts "i got a #{thing}"
end

take_this { |thing| puts "bracket got #{thing}" }

take_this { |thing|
  puts "indented bracked #{thing}"
}
