# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

#################### 0. Pseudocode

# What is the input?
# integers greater than or equal to 0

# What is the output? (i.e. What should the code return?)
# Returns a comma-separated integer as a string.

# What are the steps needed to solve the problem?
# Every number less than or equal to 999 will return the same integer as a string
# Convert numbers of 1000 and greater into a string
# Reverse the string order by iterating through the string length with a while loop,
# 	starting from the back (-1)
# Iterate through the loop by forming a new word with commas...
# 	Add to new string letter by letter,
#   every third position from the back of the string, add a ","
# Reverse the string again
# Return final string

#################### 1. Initial Solution
def separate_comma(input_num)
	if input_num < 1000
		return input_num.to_s
	end

	morph_num = input_num.to_s
	counter = 1
	reverse_word = ''
	while counter <= morph_num.length
		reverse_word << morph_num[counter * -1]
		counter += 1
	end
	
	counter = 1
	insert_comma = ''
	while counter < reverse_word.length + 1
		if counter % 3 == 0 && counter < reverse_word.length
			insert_comma << reverse_word[counter -1]
			insert_comma << ","
		else
			insert_comma << reverse_word[counter - 1]
		end
		counter += 1
	end

	final_word = ''
	counter = 1
	while counter <= insert_comma.length
		final_word << insert_comma[counter * -1]
		counter += 1
	end
	return final_word
end

#################### 2. Refactored Solution
def separate_comma(input_num)
	if input_num < 1000
		return input_num.to_s
	end

	reverse_word = input_num.to_s.reverse

	counter = 1
	insert_comma = ''
	while counter < reverse_word.length + 1
		if add_comma(counter, reverse_word) == true
			insert_comma << reverse_word[counter -1]
			insert_comma << ","
		else
			insert_comma << reverse_word[counter - 1]
		end
		counter += 1
	end

	p final_word = insert_comma.reverse
end

def add_comma(counter, reverse_word)
	if counter % 3 == 0 && counter < reverse_word.length
		return true
	end
end



#################### 3. Reflection
#What was your process for breaking the problem down? What different approaches did you consider?
# Starting from the input, I knew that anything under 1000 would just return the string.
# I considered what methods that I knew about and how the input would be transformed step
# by step. I first thought about iterating through the string from the 0 index.
# However, that didn't deal with how the comma is placed every thrid place from the end of the string.
# Instead I turn to reversing the string first without the 'reverse' method. After the string was reversed,
# I was then able to break down the logic of taking one letter at a time and putting it into
# a new string and every third string, add an '+'. At the end I had to reverse the string again.

#Was your pseudocode effective in helping you build a successful initial solution?
# Yes my pseudocode got the general idea. However, it took a few iterations to realize
# everything that needed to be done to get the final result.

#What new Ruby method(s) did you use when refactoring your solution?
# Describe your experience of using the Ruby documentation to implement
# it/them (any difficulties, etc.). Did it/they significantly change the way
# your code works? If so, how?

#How did you initially iterate through the data structure?
#Do you feel your refactored solution is more readable than your initial solution? Why?