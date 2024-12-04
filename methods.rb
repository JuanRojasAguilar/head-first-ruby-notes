gas_used = 13

def print_sum(arg1, arg2)
  print arg1 + arg2
end

def accelerate
  puts "stepping on gas"
  puts "Speeding up"
end

def sound_horn
  puts "horn button"
  puts "Beep beep"
end

def use_headlights(brightness = "low beam")
  puts "Turning on #{brightness} headlights"
  puts "Watch out for deer"
end

def mileage(miles_driven)
  if gas_used == 0
    return 0.0
  end
  miles_driven / gas_used
end

trip_mileage = mileage(400)
puts "You got #{trip_mileage} MPG on this trip."

sound_horn
accelerate
use_headlights
