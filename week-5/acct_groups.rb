# Method to automatically create accountability groups
# input: array of names
# steps: 
  # find out how many items are in the array
  # is the total length of the arrays divisible by 4 or 5?
  # 
  # if array is nil, return nil
  # if the array length is less than 3, say "group is too small"
  # if array length is 3, return group of 3
  # if array length modulus 4 is not zero
  #    iterate through the names
  #    make new arrays with 4 names in each array
  #    if the last list of names has 2 names
  #       take one name from another array with 4 names and add list of 2 to make a list of 3 
  #    else if the last list of names has 1 name
  #       put that one name into an array with 4 names to make 5
  # else create new arrays with length of 4 names
  # 
  # print arrays with index number as well as array of names
  #
# output: groups of 4 or 5 with at least 3. No of two

### Solution 1 with arrays
def group_divider (array_of_names)
	counter = 0
	group_num = 0
	group_storage = []
	if array_of_names == nil
		return nil
	elsif
		array_of_names.length < 3
		p "It's no fun in a group less than 3 people."
	elsif array_of_names.length == 3
		p "Group 1: " + array_of_names.join(", ")
	elsif array_of_names.length % 4 != 0
		
		while counter < array_of_names.length 
			group_storage << array_of_names[counter..counter + 3]
			counter += 4
			if group_storage[group_num].length == 2
				group_storage.last << group_storage.first.pop
			elsif group_storage[group_num].length == 1
				group_storage.first << group_storage.pop.pop
			end
			group_num += 1
		end
	else
		
		while counter < array_of_names.length 
			group_storage << array_of_names[counter..counter + 3]
			counter += 4
		end
		
	end
	
	group_name_assign = 1
	while group_name_assign <= group_storage.length
		p "Group #{group_name_assign}: " + group_storage[group_name_assign - 1].join(", ")
		group_name_assign += 1
	end	
end




#### Driver code
group_divider ()
group_divider (["Adell Hanson-Kahn", "Aji Slater"])
group_divider (["Adell Hanson-Kahn", "Aji Slater", "Alex DeLaPena"])
group_divider (["Adell Hanson-Kahn", "Aji Slater", "Alex DeLaPena", "Bison Hubert"])
group_divider (["Adell Hanson-Kahn", "Aji Slater", "Alex DeLaPena", "Bison Hubert", "Caitlyn Yu"])
group_divider (["Adell Hanson-Kahn", "Aji Slater", "Alex DeLaPena", "Bison Hubert", "Caitlyn Yu", "Gary Sperka"])
group_divider (["Adell Hanson-Kahn", "Aji Slater", "Alex DeLaPena", "Bison Hubert", "Caitlyn Yu", "Gary Sperka", "Helin Shiah", "James Hwang", "Jen Trudell"]) #9 ppl
group_divider (["Adell Hanson-Kahn", "Aji Slater", "Alex DeLaPena", "Bison Hubert", "Caitlyn Yu", "Gary Sperka", "Helin Shiah", "James Hwang", "Jen Trudell", "Joey Sabani"]) #10 ppl
group_divider (["Adell Hanson-Kahn", "Aji Slater", "Alex DeLaPena", "Bison Hubert", "Caitlyn Yu", "Gary Sperka", "Helin Shiah", "James Hwang", "Jen Trudell", "Joey Sabani", "John Dees"]) #11 ppl
group_divider (["Adell Hanson-Kahn", "Aji Slater", "Alex DeLaPena", "Bison Hubert", "Caitlyn Yu", "Gary Sperka", "Helin Shiah", "James Hwang", "Jen Trudell", "Joey Sabani", "John Dees", "Katy Duncan", "Laura Crowe", ]) #13 ppl
group_divider (["Adell Hanson-Kahn", "Aji Slater", "Alex DeLaPena", "Bison Hubert", "Caitlyn Yu", "Gary Sperka", "Helin Shiah", "James Hwang", "Jen Trudell", "Joey Sabani", "John Dees", "Katy Duncan", "Laura Crowe", "Lorena Mesa"]) #14 ppl

##### Reflect
#What was the most interesting and most difficult part of this challenge?
# The most interesting part is the open ended parameters to the approach of the problem. I started this challenge
# before the seeing all the group research challenge. Thus, looking back, I think I would have done it differently
# if I had known more methods. The most difficult part was trying to refactor using a hash as the data structure.
# I was unable to get my method to work, but I'll put some work into it in my free time next week.

#Do you feel you are improving in your ability to write pseudocode and break the problem down?
# I feel pretty good in that I can break down the probem into small pieces.

#Was your approach for automating this task a good solution? What could have made it even better?
# I think my apprach works, but it seems like a lot of steps. I think there is a faster way by utilizing some of
# Ruby's built-in methods.

#What data structure did you decide to store the accountability groups in and why?
# I stayed with an array because I could rearrange the groups with less than three members easier than with a hash.
# I was able to go far with a hash; however, I was unable to rearrange the group at the end because I did not know
# how to get to key/value pairs that had only two values that were the same.

#What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
# I learned that methods can become complex really quickly. If there is a logic that your are writing over again,
# then break it out into another methods for clarity. 