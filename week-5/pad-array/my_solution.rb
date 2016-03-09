# Pad an Array

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive 
  if array.length >= min_size && value == nil
     return array
   else
     max_counter = min_size - array.length
     counter = 0
     while counter < max_counter
      array << value
      counter += 1
     end
    return array
   end
end
     


def pad(array, min_size, value = nil) #non-destructive
   if array.length >= min_size && value == nil
    return array.dup
   else
     pad_array = Array.new(min_size, value)
     counter = 0
     while counter < array.length
      pad_array[counter] = array[counter]
      counter += 1
     end
#     array.each do |index, element|
#      pad_array[index] = element
#     end
#     print array
     return pad_array
   end
end


# 3. Refactored Solution



# 4. Reflection
#Were you successful in breaking the problem down into small steps?
#Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
#Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
#When you refactored, did you find any existing methods in Ruby to clean up your code?
#How readable is your solution? Did you and your pair choose descriptive variable names?
#What is the difference between destructive and non-destructive methods in your own words?