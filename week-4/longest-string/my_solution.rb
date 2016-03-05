# Longest String

# I worked on this challenge [by myself].

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil


######################## Your Solution Below #####################
# def longest_string(list_of_words)
#   if list_of_words.empty?
#   	return nil
#   else

#   	counter = 0
#   	longest_word_length = list_of_words[0].length
#   	longest_word = '' 
#   	while counter < list_of_words.length
#   		if longest_word_length <= list_of_words[counter].length
#   			longest_word_length = list_of_words[counter].length 
#   			longest_word = list_of_words[counter]
#   		end
#   		counter += 1
#   	end
#   	return longest_word
#   end
# end

######################## Refector ###########################

def longest_string(list_of_words)
  if list_of_words.empty?
  	return nil
  else
  	new_array = list_of_words.sort_by {|word| word.length}
  	longest_word = new_array.last
  end
end