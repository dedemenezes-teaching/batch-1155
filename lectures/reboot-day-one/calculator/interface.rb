require_relative 'calculator'
# Create the start up variable!
# We need to make sure that the program will go inside the loop
response = 'Y'
while response == 'Y'
  # STEP ONE
  # 1. Ask the user to input a number
  puts "Enter a first number:"
  # 2. Store it in a variable
  first_number = gets.chomp.to_i
  # 3. Ask the user to input the second number
  puts "Enter a second one:"
  # 4. Store it in another variable
  second_number = gets.chomp.to_i
  # 5. Ask the user to choose an operation
  puts "Choose operation [+][-][*][/]"
  # 6. Store the operation into another variable
  operator = gets.chomp
  # 7. build a conditional statement to check the operation and run the right calculation
  result = calculate(first_number, second_number, operator)

  # 7. give the result
  puts "Result: #{result}"

  # 8. Ask to the user if the user wants to calculate again
  puts 'Do you want to calculate again? [Y/N]'
  # 9. get the user reponse
  response = gets.chomp.upcase
end



# STEP TWO
# while the user seys 'Y'
