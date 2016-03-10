# Pad an Array

# I worked on this challenge [with: Frank Lam]

# I spent [1.5hr] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode
# What is the input? An array (min size non-negative integer) and an optional argrument...this argument is a basic object type.
# 
# What is the output? An array with the following restrictions:
# If the array's length is less than the minimum size, pad should return a new array padded with the pad value up to the minimum size.
# If the minimum size is less than or equal to the length of the array, it should just return the array.
# What are the steps needed to solve the problem?
# 1. Make an array variable
# 2. Logic test: if array length is greater than the argument
# 3.  then we pad the difference between array length and arugment
# 4.  else if array length is less than or equal to the argument
#   then return original array.


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
     return pad_array
   end
end


# 3. Refactored Solution
# N/A


# 4. Reflection
#Were you successful in breaking the problem down into small steps?
# Yes we were able to break the problem down into small steps.

#Once you had written your pseudocode, were you able to easily translate it into code?
#What difficulties and successes did you have?
# It was easier to translate the code once we were knew our direction from pseudocode.

#Was your initial solution successful at passing the tests?
#If so, why do you think that is? If not, what were the errors you encountered
#and what did you do to resolve them?
# We were able pass the initial test save for one. We encountered an object_id error.
# After researching and testing within irb. We came to the conclusion that the non-destructive
# pad method wanted us to return an object with an object ID different from the original
# array. We were not aware that setting the original array equal to a array with a new name
# did not change the object ID.

#When you refactored, did you find any existing methods in Ruby to clean up your code?
# We thought the code looked readible and didn't find the need to refactor.

#How readable is your solution? Did you and your pair choose descriptive variable names?
# Our solution is pretty readible. Yes we did choose descriptive names.

#What is the difference between destructive and non-destructive methods in your own words?
# Destructive methods will result in the permanent change of the original input object as well as its
# object ID. Non-destructive methods will not change the original input object nor its object ID.