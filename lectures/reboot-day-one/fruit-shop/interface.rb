store = {
  'kiwi' => 1.25,
  'banana' => 0.5,
  'mango' => 4,
  'aspargus' => 9
}

cart = []

# 1. PRint welcome message
puts 'Welcome to LW Street Market'

# 2. Display the items...using each
puts "In our store today:"
store.each do |key, value|
  puts "#{key}: #{value}€"
end

item = ''
until item == 'quit'
  # 3. ask the user for the product (Which item? (or 'quit' to checkout))
  puts "Which item? (or 'quit' to checkout)"
  # 4. get the item choose
  item = gets.chomp
  # 5. Check if the product is available in the shop (hash.key?(user_choice))
  if store.key?(item)
    # 6. if it's available
    # 6.1 Add them to the cart
    cart.push(item)
  else
    # 6 if not available
    # 6.2 tell it not available
    puts "Sorry, we don't have #{item} today." if item != 'quit'
  end
end

p cart

# 7. Create the initial TOTAL PRICE
total_price = 0
# 8. iterate over the cart
#=> ['mango', 'kiwi']
cart.each do |product|
  # 9. add the price to the bill (where do we have the price??? maybe in the hash...)
  # incrementing total price by accessing the value for the given key
  total_price = total_price + store[product]
end
# 10. print the total bill
puts "#{total_price}€"
