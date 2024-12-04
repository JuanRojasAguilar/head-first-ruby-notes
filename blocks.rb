def my_method(&my_block)
  puts "Method init"
  my_block.call
  puts "Back in method"
end

my_method do
  puts "We in block"
end
# No need to explicitly run method
