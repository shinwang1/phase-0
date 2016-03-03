#Full name greeting
puts "What is your first name?"
firstName = gets.chomp
puts "What is your middle name?"
middleName = gets.chomp
puts "What is your last name?"
lastName = gets.chomp
puts "Hello " + firstName + " " + middleName + " " + lastName

#Bigger, better number
puts "What is your favorite number?"
favNum = gets.chomp
newNum = favNum.to_i + 1
puts "Your #{favNum} is okay, but #{newNum} is better a number."


###### Release 2
# https://github.com/shinwang1/phase-0/blob/master/week-4/define-method/my_solution.rb

###### Return a Formatted Address
# https://github.com/shinwang1/phase-0/blob/master/week-4/address/my_solution.rb

###### Defining Math Methods:
# https://github.com/shinwang1/phase-0/blob/master/week-4/math/my_solution.rb

######Reflection
# How do you define a local variable?
# local variable can be defined by a word starting lower case letter or with an underscore.

# How do you define a method?
# Methods are defined by putting your logic inside a 'def' and ending with an 'end'.

# What is the difference between a local variable and a method?
# A variable is assigned to some data while methods perform logic and/or operations to variables.

# How do you run a ruby program from the command line?
# You type 'ruby' then your filename. For example :>ruby <filename>.rb

# How do you run an RSpec file from the command line?
# You type 'rspec' then the filename. For example :>rspec <filename>.rb

# What was confusing about this material? What made sense?
# This material is pretty striaght forward. I did see a couple of times when I had to convert integers to strings for attaching strings together with the "+" operator.

