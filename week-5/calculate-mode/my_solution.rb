# Calculate the mode Pairing Challenge

# I worked on this challenge [by with: Scoot Southard]

# I spent [1.5] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.

########## 0. Pseudocode

# What is the input? An array of number or integers
# What is the output? Return an array that occurs most frequent.
# Evalueceptions: return everything if they all occur at the same frequency.

# What are the steps needed to solve the problem?
# 1. Make a method called mode and takes an array
# 2. Tally up the numbers that repeat in the array and set it to a place holder
# 3. Iterate over the array again to find which occurance equal the place holder, then
# 4. Append this number to a new array.
# 5. Print out the unique numbers in each array.

########### 1. Initial Solution
# def mode (array)
#   high = 0

#   array.each do |x| 
#    if array.count(x) > high
#      high = array.count(x)
#    end
#   end

#   new_array = []
#   array.each do |x| 
#    if array.count(x) == high
#      new_array << x
#    end
#   end
#   return new_array.uniq
# end

# 3. Refactored Solution
def mode (array)
  number_count = 0

  array.each do |value| 
   if array.count(value) > number_count
     number_count = array.count(value)
   end
  end

  new_array = []
  array.each do |value| 
   if array.count(value) == number_count
     new_array << value
   end
  end
  return new_array.uniq
end

# 4. Reflection
#Which data structure did you and your pair decide to implement and why?
# We first started off with trying to use a hash; however, we could not figure out a way
# to count the repeating values and still have the keys attached to it. After about an hour
# of both of us researching, we decided to move to arrays. With arrays, we were able to count
# the repeated values with non-destructive methods. Once we tallied up those repeated values,
# we created used the unique method to get rid of repeated numbers in the array.

#Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? 
# I'm not sure what this question is asking. If we're comparing to 5.2, then I think it was just as challenging.
# I think pseudocode works to a certain point. If we're unable to find the method or algorithm to achieve
# what we want from a data structure, then we're going to have to go a different way.

#What issues/successes did you run into when translating your pseudocode to code?
# We first formed a hash with a method .group_by. This method makes key/value pairs of values that
# are alike. However, once we had the hash, we could not extract a count to see which values repeated
# the most.
#What methods did you use to iterate through the content? Did you find any good ones when you were refactoring?
# Were they difficult to implement?
# We used the .each method to iterate and the .count method to tally matching values. We did not find
# others during the refactor because .count was specific to the function that we needed.
