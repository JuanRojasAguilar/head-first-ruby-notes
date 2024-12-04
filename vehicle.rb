class Vehicle
  attr_accessor :odometer
  attr_accessor :gas_used

  def accelerate
    puts "Floor it!"
  end

  def sound_horn
    puts "Beep! Beep!"
  end

  def steer
    puts "Turn front 2 wheels."
  end

  def mileage
    return @odometer / @gas_used
  end
end

class Car < Vehicle
end

class Truck < Vehicle
  attr_accessor :cargo

  def load_bed(contents)
    puts "Securing #{contents} in the truckbed"
    @cargo = contents
  end
end

class Motorcycle < Vehicle
  def steer
    puts "Turn front wheel"
  end
end

truck = Truck.new
truck.load_bed("266 bouncy balls")
puts "the truck is carrying #{truck.cargo}"

car = Car.new
car.odometer = 11432
car.gas_used = 366

puts "Lifetime MPG"
puts car.mileage

motorcycle = Motorcycle.new
motorcycle.steer
