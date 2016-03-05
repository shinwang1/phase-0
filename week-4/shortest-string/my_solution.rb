# Shortest String

# I worked on this challenge [by myself ].

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

################### Your Solution Below ####################
def shortest_string(list_of_words)
  if list_of_words == []
  	return nil
  else
  	counter = 0
  	shortest_word = ''
  	shorest_word_length = list_of_words[0].length
  	while counter < list_of_words.length
  		if shorest_word_length >= list_of_words[counter].length
  			shortest_word = list_of_words[counter]
  		end
  	counter += 1
  	end
  end
  return shortest_word
end

################### Refactor ########################
def shortest_string(list_of_words)
	if list_of_words == []
  		return nil
  	else
  		new_array = list_of_words.sort_by {|word_length| word_length.length}
  		shorest_word = new_array.first
  	end
end