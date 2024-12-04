class Animal
  attr_reader :name
  attr_reader :age

  def name=(value)
    if value == ""
      raise "Name can't be blank"
    else
      @name = value
    end
  end

  def age=(value)
    if value < 0
      raise "Cant set an age of #{value}"
    else
      @age = value
    end
  end

  def talk
    puts "#{@name} says Bark!"
  end

  def move(destination)
    puts "#{@name} runs to the #{destination}."
  end

  def report_age
    puts "#{@name} is #{@age} years old."
  end
end

class Dog < Animal
  def to_s
    "#{@name} the dog, age #{@age}"
  end
end

class Bird < Animal
end

class Cat < Animal
end
