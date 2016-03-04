# Largest Integer

# I worked on this challenge [by myself, with: myself].

# largest_integer is a method that takes an array of integers as its input
# and returns the largest integer in the array
#
# +list_of_nums+ is an array of integers
# largest_integer(list_of_nums) should return the largest integer in the +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

###################### Your Solution Below #####################
def largest_integer(list_of_nums)
  if list_of_nums == []
  	return nil
  else
  	counter = 0
  	largest_num = list_of_nums[0]
  	while counter < list_of_nums.length
  		if largest_num <= list_of_nums[counter]
  			largest_num = list_of_nums[counter]
  		end
  		counter += 1
  	end
  	return largest_num
  end
end

###################### Refactor #####################
def largest_integer(list_of_nums)
	if list_of_nums == []
  		return nil
  	else
  		largest_num = list_of_nums.sort.last 
  	end
end
