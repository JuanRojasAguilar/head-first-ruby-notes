class Employee
  attr_reader :name

  def name=(name)
    if name == ""
      raise "Name can't be nil"
    else
      @name = name
    end
  end

  def print_name
    puts "Name: #{self.name}"
  end
end

class SalariedEmployee < Employee
  attr_reader :salary

  def salary=(salary)
    if salary < 0.0
      raise "You can't have a salary of #{salary}"
    else
      @salary = salary
    end
  end

  def print_pay_stub
    print_name
    pay = calculate_pay_stub
    puts format("Pay This Period: %0.2f", pay)
  end

  def calculate_pay_stub
    (self.salary / 365) * 14
end

class HourlyEmployee < Employee
  attr_reader :hourly_wage, :hours_per_week

  def self.security_guard(name)
    HourlyEmployee.new(name, 19.25, 30)
  end

  def self.cashier(name)
    HourlyEmployee.new(name, 12.75, 25)
  end

  def self.janitor(name)
    HourlyEmployee.new(name, 10.50, 20)
  end

  def hourly_wage=(hourly_wage)
    if hourly_wage < 0.0
      raise "Hourly wage of #{hourly_wage} not valid"
    else
      @hourly_wage = hourly_wage
    end
  end

  def hours_per_week=(hours_per_week)
    if hours_per_week < 0
      raise "You can't have a weekly of #{hours_per_week}"
    else
      @hours_per_week = hours_per_week
    end
  end

  def print_pay_stub
    print_name
    pay = calculate_pay_stub
    puts format("Pay this period: $%0.2f", pay)
  end

  def calculate_pay_stub
    self.hourly_wage * self.hours_per_week * 2
  end
end
