require 'pry'

# Question 1
p 'What is your name?'
full_name=gets.chomp
split_name=full_name.split(' ')

# Question 2
p 'What is your street address?'
full_address=gets.chomp
sep_address = full_address.split(' ')

number = sep_address[0].split('')
block = number.pop()
number_compact = number.join()

# Dictionary
hash = {'A'=>'A-block', 'B'=>'B-block', 'C'=>'C-block', 'D'=>'D-block'}

# Printing the results on the screen
p 'The first name is #{split_name[0]}'
p 'The last name is #{split_name[1]}'
p 'Your street number is: #{number_compact}'
p 'Your street letter means: #{hash[block]}'

# Option 2
p '-----------------------------------------'
block << '-block'
p 'Your street letter means: #{block}'



 