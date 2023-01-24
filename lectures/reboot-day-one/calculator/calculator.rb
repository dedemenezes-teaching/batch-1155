def calculate(first_number, second_number, operator)
  if operator == "+"
    first_number + second_number
  elsif operator == '-'
    first_number - second_number
  elsif operator == '*'
    first_number * second_number
  elsif operator == '/'
    first_number / second_number
  else
    puts 'Sorry, wrong action!'
  end
end
