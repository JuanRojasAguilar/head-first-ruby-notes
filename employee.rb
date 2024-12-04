class Employee
  attr_reader :name, :salary

  def initialize(name = "Anon", salary = 0.0)
    self.name = name
    self.salary = salary
  end

  def name=(name)
    if name == ""
      raise "Name can't be blank!"
    end
    @name = name
  end

  def salary=(salary)
    if salary < 0
      raise "A salary of #{salary} is not valid"
    end
    @salary = salary
  end

  def print_pay_stub
    puts "Name: #{self.name}"
    pay_for_period = calculate_pay_stub
    puts format("Pay This Period: $%0.2f", pay_for_period)
  end

  def calculate_pay_stub
    (self.salary / 365.0) * 14
  end
end

amy = Employee.new
amy.name = "Amy Blake"
amy.salary = 50000

amy.print_pay_stub

employee = Employee.new
employee.print_pay_stub
