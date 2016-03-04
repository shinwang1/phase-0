# Smallest Integer

# I worked on this challenge [by myself, with: myself].

# smallest_integer is a method that takes an array of integers as its input
# and returns the smallest integer in the array
#
# +list_of_nums+ is an array of integers
# smallest_integer(list_of_nums) should return the smallest integer in +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
def smallest_integer(list_of_nums)
  if list_of_nums == nil #test to see if array is empty, if so return nil
  	return nil
  elsif list_of_nums == [0]
  	return 0
  elsif list_of_nums.length == 1
  	return list_of_nums[0]
  end

  counter = 0
  smallest_num = list_of_nums[0]
  smaller_list = list_of_nums[1..-1]
  while smaller_list.length != 0 #go through every member of the array with a loop interation
  	
  end
	# if smallest_num < smaller_list[0]
	# 	smaller_list = smallest_list[1..-1]
	# elsif smallest_num > smaller_list[0]
	# 	smallest_num = smallest_list[0]
	# 	return smallest_num
	# else
	# 	return 0
	# end
	# 	 # perform logic test by comparing items
 #  	# pop out first item and save to a variable A and compare to each in the remaining array
 #  	# if the variable A is smaller than the first item in the array, move to the next item in the array
 #  	# if the the item in the array is smaller, assign variable A to the item

end