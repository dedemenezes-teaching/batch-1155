# How to model the horses
horses = ['manga-larga', 'spirit', 'night', 'unlucky']

answer = 'y'
user_balance = 100

while answer == 'y' && user_balance >= 10
  # 1. Get the winner RANDOMLY
  winner = horses.sample
  # 2. Display all the names
  # 1. manga-larga
  # 2. spirit
  # 3. night
  # 4. unlucky
  horses.each_with_index do |horse, index|
    puts "#{index + 1}. #{horse}"
  end
  # 3. Ask for the user horse name
  puts "You have: #{user_balance}"
  puts "Choose your horse:"
  # 4. Get the user choice
  user_choice = gets.chomp
  # 5. compare if they are the same0
  if user_choice == winner
    # 5.1 if its the same - User won
    # user_balance = user_balance + 50
    user_balance += 50
    puts "You won! Now you have #{user_balance}"
  else
    # 5.2. if not the same USer lost
    user_balance -= 10
    puts "Sorry, try again! Now you have #{user_balance}"
    # user_balance = user_balance - 10
  end

  puts 'Do you want to keep betting?'
  answer = gets.chomp
end
