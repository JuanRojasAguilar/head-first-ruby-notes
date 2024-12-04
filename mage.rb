class Mage
  attr_accessor :name
  attr_accessor :spell

  def enchant(target)
    puts "#{@name} casts #{@spell} on #{target.name}!"
  end
end
