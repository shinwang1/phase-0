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
# def group_divider (array_of_names)
# 	counter = 0
# 	group_num = 0
# 	group_storage = []
# 	if array_of_names == nil
# 		return nil
# 	elsif
# 		array_of_names.length < 3
# 		p "It's no fun in a group less than 3 people."
# 	elsif array_of_names.length == 3
# 		p "Group 1: " + array_of_names.join(", ")
# 	elsif array_of_names.length % 4 != 0
		
# 		while counter < array_of_names.length 
# 			group_storage << array_of_names[counter..counter + 3]
# 			counter += 4
# 			if group_storage[group_num].length == 2
# 				group_storage.last << group_storage.first.pop
# 			elsif group_storage[group_num].length == 1
# 				group_storage.first << group_storage.pop.pop
# 			end
# 			group_num += 1
# 		end
# 	else
		
# 		while counter < array_of_names.length 
# 			group_storage << array_of_names[counter..counter + 3]
# 			counter += 4
# 		end
		
# 	end
	
# 	group_name_assign = 1
# 	while group_name_assign <= group_storage.length
# 		p "Group #{group_name_assign}: " + group_storage[group_name_assign - 1].join(", ")
# 		group_name_assign += 1
# 	end	
# end

#### Solution 2 with hashes
def group_divider (array_of_names)
  if array_of_names == nil
    p "There's no one here."
  elsif array_of_names.length < 3
  	p "It's no fun in a group less than 3 people."
  elsif array_of_names.length == 3
  	group_hash = Hash.new
  	
  	array_of_names.each do |x|
      group_hash[x] = 1
    end
    p group_hash
  else
    group_hash = Hash.new
   
    counter = 0
    group_num_assigned = 1
    while counter < array_of_names.length
    	group_hash[array_of_names[counter]] = group_num_assigned
   
    	counter += 1
    	if counter % 4 == 0
    		group_num_assigned += 1
    	end
    end

    # let's do something about primes
  	p group_hash  
  end
  
end

def sort_by_group_num (list, key, value)

end


#### Driver code
group_divider ()
group_divider (["Adell Hanson-Kahn", "Aji Slater"])
group_divider (["Adell Hanson-Kahn", "Aji Slater", "Alex DeLaPena"])
# group_divider (["Adell Hanson-Kahn", "Aji Slater", "Alex DeLaPena", "Bison Hubert"])
group_divider (["Adell Hanson-Kahn", "Aji Slater", "Alex DeLaPena", "Bison Hubert", "Caitlyn Yu"])
# group_divider (["Adell Hanson-Kahn", "Aji Slater", "Alex DeLaPena", "Bison Hubert", "Caitlyn Yu", "Gary Sperka"])
group_divider (["Adell Hanson-Kahn", "Aji Slater", "Alex DeLaPena", "Bison Hubert", "Caitlyn Yu", "Gary Sperka", "Helin Shiah", "James Hwang", "Jen Trudell"]) #9 ppl
# group_divider (["Adell Hanson-Kahn", "Aji Slater", "Alex DeLaPena", "Bison Hubert", "Caitlyn Yu", "Gary Sperka", "Helin Shiah", "James Hwang", "Jen Trudell", "Joey Sabani"]) #10 ppl
# group_divider (["Adell Hanson-Kahn", "Aji Slater", "Alex DeLaPena", "Bison Hubert", "Caitlyn Yu", "Gary Sperka", "Helin Shiah", "James Hwang", "Jen Trudell", "Joey Sabani", "John Dees"]) #11 ppl
