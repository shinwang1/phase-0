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
  elsif array_of_names.length % 5 == 0 || array_of_names.length % 5 == 3 || array_of_names.length % 5 == 4
    group_hash = Hash.new
   
    counter = 0
    group_num_assigned = 1
    while counter < array_of_names.length
      group_hash[array_of_names[counter]] = group_num_assigned
      counter += 1
      if counter % 5 == 0
        group_num_assigned += 1
      end
    end
    p group_hash
  elsif array_of_names.length % 3 == 0  
    group_hash = Hash.new
   
    counter = 0
    group_num_assigned = 1
    while counter < array_of_names.length
      group_hash[array_of_names[counter]] = group_num_assigned
      counter += 1
      if counter % 3 == 0
        group_num_assigned += 1
      end
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