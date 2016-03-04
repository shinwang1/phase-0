# Smallest Integer

# I worked on this challenge [by myself, with: myself].

# smallest_integer is a method that takes an array of integers as its input
# and returns the smallest integer in the array
#
# +list_of_nums+ is an array of integers
# smallest_integer(list_of_nums) should return the smallest integer in +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

######################## Your Solution Below#####################
# def smallest_integer(list_of_nums)
#   if list_of_nums == nil #test to see if array is empty, if so return nil
#   	return nil
#   elsif list_of_nums.length == 1 #test to see if array is only 1 index long
#   	return list_of_nums[0]
#   end

#   counter = 0
#   smallest_num = list_of_nums[0]
#   # smaller_list = list_of_nums[1..-1]
#   while counter < list_of_nums.length #go through every member of the array with a loop interation
#     if smallest_num >= list_of_nums[counter] # perform logic test by comparing items
#       smallest_num = list_of_nums[counter] # change the compared variable to the smallest if logic passes 
#       #p smallest_num to test
#     end
#     counter += 1 # compare to each in the remaining array
#   end

#   return smallest_num
# end

################################# Refactor ####################
def smallest_integer(list_of_nums)
  if list_of_nums == nil #test to see if array is empty, if so return nil
    return nil
  elsif list_of_nums.length == 1 #test to see if array is only 1 index long
    return list_of_nums[0]
  else
    return list_of_nums.sort.first
  end
end

	
