class Dog
  attr_reader :name, :age

  def name=(value)
    if value == ""
      raise "Name can't be blank!"
    else
      @name = value
      puts "Welcome #{@name}"
    end
  end

  def age=(value)
    if value < 0
      raise "Age of #{value.to_s} isn't valid!"
    else
      @age = value
      puts "Your dog seems to be #{@age} years old"
    end
  end

  def talk
    puts "#{@name} Says Bark"
  end

  def move(destination)
    puts "Running to #{destination}"
  end

  def report_age
    puts "#{@name} is #{@age} years old."
  end
end

fido = Dog.new
fido.name = "Fido"
fido.age = 2

rex = Dog.new
rex.name = "Rex"
rex.age = 3

fido.report_age
rex.report_age
