require 'bigdecimal'

prices = [3.99, 25.00, 8.99]

def total(price_list)
  amount = 0
  price_list.each do |price|
    amount += price
  end
  return amount
end

def refund(price_list)
  amount = 0
  price_list.each do |price|
    amount -= price
  end
  return amount
end

def show_discounts(price_list)
  discount_reciprocal = get_discount_reciprocal(30)
  price_list.each do |price|
    product_price = BigDecimal(price.to_s)
    calculated_price = product_price * discount_reciprocal
    formated_amount = calculated_price.round(2).to_s("F")
    puts format("You got a discount of: $%.2f", formated_amount)
  end
end

def get_discount_reciprocal(discount_percentage)
  raise ArgumentError, "Discount should be higher than 0" if discount_percentage <= 0
  BigDecimal("1") / BigDecimal((discount_percentage / 10).to_s)
end

puts format("The total is $%.2f", total(prices))
puts format("Please refund $%.2f", refund(prices))
show_discounts(prices)
