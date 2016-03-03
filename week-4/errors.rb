# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

# "Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

# def cartman_hates(thing)
#   while true
#     puts "What's there to hate about #{thing}?"
# end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# File: error.rb
# 2. What is the line number where the error occurs?
# Line 170
# 3. What is the type of error message?
# Syntax Error
# 4. What additional information does the interpreter provide about this type of error?
# Unexpected end-of-input, expecting keyword_end
# 5. Where is the error in the code?
# Line 17. The method is missing a second "end". The first "end" belongs to the while loop.
# 6. Why did the interpreter give you this error?
# Each method in Ruby requires an "end"

# --- error -------------------------------------------------------

# south_park

# 1. What is the line number where the error occurs?
# Line 35
# 2. What is the type of error message?
# Type: <main> NameError
# 3. What additional information does the interpreter provide about this type of error?
# Undefined local variable or method 'south_park'
# 4. Where is the error in the code?
# If south_park was a local variable, then it needs to be assigned something such as south_park = "Hi"
# 5. Why did the interpreter give you this error?
# The interpreter thinks this south_park is undefined.

# --- error -------------------------------------------------------

# cartman()

# 1. What is the line number where the error occurs?
# Line 50
# 2. What is the type of error message?
# <main> NoMethodError
# 3. What additional information does the interpreter provide about this type of error?
# <undefined method 'cartman' for main
# 4. Where is the error in the code?
# If this is a method then it should be written as the following: def cartman() end
# 5. Why did the interpreter give you this error?
# methods in Ruby should be defined with 'def' and end of 'end'

# --- error -------------------------------------------------------

# def cartmans_phrase
#   puts "I'm not fat; I'm big-boned!"
# end

# cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# Line 65
# 2. What is the type of error message?
# ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arugments passing into the method cartmans_phrase
# 4. Where is the error in the code?
# The method cartmans_phrase should expect an arugment passed in instead of leaving it blank
# 5. Why did the interpreter give you this error?
# When the method cartmans_phase is called in line 69, it passes in an argument that the method isn't expecting.

# --- error -------------------------------------------------------

# def cartman_says(offensive_message)
#   puts offensive_message
# end

# cartman_says

# 1. What is the line number where the error occurs?
# Line 88
# 2. What is the type of error message?
# <main> ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments.
# 4. Where is the error in the code?
# When calling the method in line 88, the user should pass in an argument.
# 5. Why did the interpreter give you this error?
# The method expects an argument but did not get one in line 88



# --- error -------------------------------------------------------

# def cartmans_lie(lie, name)
#   puts "#{lie}, #{name}!"
# end

# cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# Line 109
# 2. What is the type of error message?
# <main> Argument Error
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments
# 4. Where is the error in the code?
# Line 109 only passed in one argument when the method is expecting two 'lie' and 'name'
# 5. Why did the interpreter give you this error?
# The method cartmans_lie expects two arguments, so the user should pass in two arguments when calling upon the method.

# --- error -------------------------------------------------------

# 5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# Line 124
# 2. What is the type of error message?
# TypeError
# 3. What additional information does the interpreter provide about this type of error?
# String can't be coerced into Fixnum
# 4. Where is the error in the code?
# after the multiplication sign
# 5. Why did the interpreter give you this error?
# A method cannot perform a method of multiplying on a number and a string. However, it can perform the method if it was written as "string" * 5

# --- error -------------------------------------------------------

# amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# Line 139
# 2. What is the type of error message?
# ZeroDivisionError
# 3. What additional information does the interpreter provide about this type of error?
# divided by 0
# 4. Where is the error in the code?
# 20/0
# 5. Why did the interpreter give you this error?
# You cannot divid any number by zero in Ruby

# --- error -------------------------------------------------------

# require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# Line 155
# 2. What is the type of error message?
# LoadError
# 3. What additional information does the interpreter provide about this type of error?
# cannot load such file.
# 4. Where is the error in the code?
# require_relative is calling upon a file called cartmans_essay.md
# 5. Why did the interpreter give you this error?
# cartmans_essay.md is not a file to be found in my directory.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
# Which error was the most difficult to read?
#  I think certain syntax errors can be hard to read at times. For example, the cartman_hates method didn't have a second end.

# How did you figure out what the issue with the error was?
#  I knew that was the error; however, I wasn't sure how to while true flow was used until I pulled the method into a separate file and tested it.

# Were you able to determine why each error message happened based on the code? 
# Sometimes syntax errors are not as specific with which line of code to examine. In this case I had to single out the lines and test it in another filename.rb

# When you encounter errors in your future code, what process will you follow to help you debug?
# I think first you have to be able to read everything and know what the code is trying to do. Then see what inputs and outs are. Then look at the logic inside as well as syntax.