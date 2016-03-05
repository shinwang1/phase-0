# Concatenate Two Arrays

# I worked on this challenge [by myself].
# loop through second array and place each indices at the end of the first array

################ Your Solution Below ################

def array_concat(array_1, array_2)
	counter = 0
	while counter < array_2.length
		array_1 << array_2[counter]
		counter =+ 1
	end  
	return array_1
end

############### Refactor #################

def array_concat(array_1, array_2)
	new_array = array_1.concat(array_2)
end