# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

# Pseudocode
# Input: integer
# Output: true or false
# Steps:
# 1. Write a method that takes in an integer
# 2. Run a fibonacci sequence up to that integer
# 3. Check if that number equals one of the numbers in the sequence
# 4. Output true or false


# Initial Solution

# def is_fibonacci?(num)
# 	f0 = 0
# 	f1 = 1
# 	fn = 0
# 	while fn <= num
# 		fn = f1 + f0
# 		f0 = f1
# 		f1 = fn

# 		if fn == num
# 			return true
# 		elsif fn > num
# 			return false
# 		end
# 	end
# end

##### Driver code
# is_fibonacci?(145)
# is_fibonacci?(143)
# is_fibonacci?(144)

# Refactored Solution
def is_fibonacci?(num)
	fZero = 0
	fOne = 1
	fSum = 0
	while fSum <= num
		fSum = fOne + fZero
		fZero = fOne
		fOne = fSum

		if fSum == num
			return true
		elsif fSum > num
			return false
		end
	end

end


# Reflection
# What concepts did you review or learn in this challenge?
# I reviewed iterating through a loop for a fibonacci sequence.

# What is still confusing to you about Ruby?
# I think Ruby is pretty straight forward at this point. I imagine there
# will be more nuances to Ruby since there will be many ways to write Ruby
# elegantly. 

# What are you going to study to get more prepared for Phase 1?
# I will study more algorithms and bruch up on JS.
# I did not find any emunerate methods for this challenge.
