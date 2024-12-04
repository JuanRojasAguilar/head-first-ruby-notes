require 'bigdecimal'

prices = [3.99, 25.00, 8.99]

def total(price_list)
  amount = 0
  index = 0
  while index < price_list.length
    amount += price_list[index]
    index += 1
  end
  return amount
end

def refund(price_list)
  amount = 0
  index = 0
  while index < price_list.length
    amount -= price_list[index]
    index += 1
  end
  return amount
end

def show_discounts(price_list)
  index = 0
  while index < price_list.length
    discount = BigDecimal("3.0")
    product_price = BigDecimal(price_list[index].to_s)
    amount_off = product_price / discount
    formated_amount = amount_off.round(2).to_s("F")
    puts format("You got a discount of: $%.2f", formated_amount)
    index += 1
  end
end

puts format("The total is $%.2f", total(prices))
puts format("Please refund $%.2f", refund(prices))
show_discounts(prices)
