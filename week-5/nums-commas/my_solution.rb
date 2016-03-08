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
# def separate_comma(input_num)
# 	if input_num < 1000
# 		return input_num.to_s
# 	end

# 	morph_num = input_num.to_s
# 	counter = 1
# 	reverse_word = ''
# 	while counter <= morph_num.length
# 		reverse_word << morph_num[counter * -1]
# 		counter += 1
# 	end
	
# 	counter = 1
# 	insert_comma = ''
# 	while counter < reverse_word.length + 1
# 		if counter % 3 == 0 && counter < reverse_word.length
# 			insert_comma << reverse_word[counter -1]
# 			insert_comma << ","
# 		else
# 			insert_comma << reverse_word[counter - 1]
# 		end
# 		counter += 1
# 	end

# 	final_word = ''
# 	counter = 1
# 	while counter <= insert_comma.length
# 		final_word << insert_comma[counter * -1]
# 		counter += 1
# 	end
# 	return final_word
# end

#################### 2. Refactored Solution
# def separate_comma(input_num)
# 	if input_num < 1000
# 		return input_num.to_s
# 	end

# 	num_to_string = input_num.to_s

# 	counter = -1
# 	rev_string_length = num_to_string.length * -1
# 	insert_comma = []
# 	while counter > rev_string_length - 1
# 		if add_comma(counter, rev_string_length) == true
# 			insert_comma.unshift(num_to_string[counter])
# 			insert_comma.unshift(",")
# 		else
# 			insert_comma.unshift(num_to_string[counter])
# 		end
# 		counter -= 1
# 	end

# 	p final_word = insert_comma.join("")
# end

# def add_comma(counter, rev_string_length)
# 	if counter % 3 == 0 && counter > rev_string_length
# 		return true
# 	end
# end

#################### Another Refactor for readability 
def separate_comma(input_num)
	if input_num < 1000
		return input_num.to_s
	end

	num_to_string = input_num.to_s

	reverse_counter = -1
	rev_string_length = num_to_string.length * -1
	word_array_builder = []
	
	while reverse_counter > rev_string_length - 1
		if digit_place_test(reverse_counter, rev_string_length) == true
			insert_letter_to_new_array(word_array_builder, num_to_string, reverse_counter)
			word_array_builder.unshift(",")
		else
			insert_letter_to_new_array(word_array_builder, num_to_string, reverse_counter)
		end
		reverse_counter -= 1
	end

	p final_word = word_array_builder.join("")
end

def digit_place_test(reverse_counter, rev_string_length)
	if reverse_counter % 3 == 0 && reverse_counter > rev_string_length
		return true
	end
end

def insert_letter_to_new_array(word_array_builder, num_to_string, reverse_counter)
	word_array_builder.unshift(num_to_string[reverse_counter])
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
# I wasn't able to find a suitable "new" method for refactoring. Instead, I wanted to see
# if I could iterate through my string from the rear staring at -1. This eliminated two .reverse
# methods. I then had to account for iterating through a negative length and breaking the loop
# once the negative length was reached. This meant that I had to subtract one from my counter. At
# the end, I realized that I could not do a unshift method to a string, so I had to use an array
# to accomplish putting together the new string in the sequence that I want it. Lastly a .join method
# turns the array into a single string. I then refactored by making single methods for repeated tasks.
# I changed the names of the methods so that it descriptive to the function that it performs. 

#How did you initially iterate through the data structure?
# I initially wanted to iterate by dividing by 1000. If the number is still bigger than 1000,
# the loop would count up until the number is less than 1000. However, I could not figure out
# the relationship for this iteration to give me an algorithm for comma placement. I think there
# is something there, but I could not connect the dots just yet.

#Do you feel your refactored solution is more readable than your initial solution? Why?
# I do think my refactored solution is more readable because I changed my variables and method
# to be descriptive to what they are and what they do respectively. For example, word_array_builder
# builds an array for the word and digit_place_test tests where to put the commas.