# 1. Print an welcome message
puts 'Welcome to LW Gift List'

gift_list = ["PS 5", { name: "Laptop", status: false }, "Bike"]

{
  name: 'Flamengo',
  supporters: 20000,
  stadium: 'Maracana'
}
user_choice = ''
until user_choice == 'quit'
  # 2. print actions options (Which action [list|add|delete|quit]?)
  puts "Which action [list|add|delete|quit]?"
  # 3. get action choose by user
  user_choice = gets.chomp
  # 4. build a conditional statement to execute the right action
  if user_choice == 'list'
    puts 'TODO: list items'
    # 1. Iterate over the list
      # 1.1 print each gift from the list

    # 1. PS 5
    # 2. Laptop
    # 3. Bike
  elsif user_choice == 'add'
    puts "TODO: ask user an item and add it to gift list"
    # 1. Ask for the gift name
    # 2. get the gift name and assign to a variable
    # 3. Add to the gift list
    # 3.1 gifst list is an Array. we need to push the gift into the array
  elsif user_choice == 'delete'
    puts "TODO: ask user the index of item to delete and delete it"
    #
    # 0. Display the list
    # 1. ask which gift the user wants to delete
    # 2. get the index the user want to delete and assign to a variable
    # 3. delete from list array
    # 4. print new list without the deleted gift
  elsif user_choice == 'quit'
  puts "Goodbye"
  else
    puts 'Wrong action. Choose between [list|add|delete|quit]'
  end
end


gift_list = ["PS 5", { name: "Laptop", status: false }, "Bike"]
# MArk as bought
# 1. give the user the new option
# 2. be able to execute the new action
# 3. show the list
# 4. get the item to mark as bought
# 5. mark as bought => reassign the status value inside the hash
# 6. show the list
