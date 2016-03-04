# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: David Walden].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: an array of numbers
# Output: sum of the arrays
# Steps to solve the problem.
# 1. take in an array
# 2. start a counter variable at 1
# 3. set the initial variable to the first index of the array
# 4. loop through the array until the last position of the array
# 5. and the fisrt index of the array to the second index
# 6. counter adds 1 to count up
# 7. end loop and array and return sum
# 
# def total(num_array)

#   i=1
#   sum_array = num_array[0]
  
#   while i < num_array.length
#     sum_array = sum_array + num_array[i]
#     i += 1
#   end
#   return sum_array
  
# end


# 3. total refactored solution
def total(num_array)
  sum = 0
  num_array.each {|a| sum += a}
  return sum
end


# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: an array
# Output: a string with a Cap letter for the first word and period to end the sentence.
# Steps to solve the problem.
# Add indexes together with space after each words.
# Capitalize first letter of first index.
# Take out the last space at index -1
# Add period to end.

# 5. sentence_maker initial solution
# def sentence_maker(sentence_array)
#   final_sen = ""
#   i=1
#   final_sen = sentence_array[0].to_s
#   while i < sentence_array.length
#     final_sen = final_sen + " " + sentence_array[i].to_s
#     i += 1
#   end
  
#   return final_sen.capitalize.+"."
  
# end


# 6. sentence_maker refactored solution
def sentence_maker(sentence_array)
  final_sen = sentence_array.join(" ").capitalize + "."
end
