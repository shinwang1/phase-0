########### I worked with Buck on this. It took us 1.5 Hours.


# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # create new hash (with default value?)
  # split string into separate items
  # for each separate item, create hash entry
  # set default quantity: 0
  # print the list to the console [can you use one of your other methods here?]
# output: A hash of the entire list with key being grocery item and value being quantity.


# Method to add an item to a list
# input: item name and optional quantity, and the list to be added to
# steps: 
  # update the value that the hash key (item name) references
# output: print out updated list


# Method to remove an item from the list
# input: list that we're removing from, and the item name that we're removing
# steps: call method to remove hash entry with given key from given list
# output: print out updated list


# Method to update the quantity of an item
# input: list being updated, name of item, new quantity
# steps: assign new quantity to hash entry with given key
# output: print out updated list


# Method to print a list and make it look pretty
# input: list to print
# steps: Possibly use built-in method
#        Otherwise loop through hash and print out each hash entry
# output: List printed prettily

def create_list (string_list)
  if string_list == nil
    groc_hash = Hash.new
  else
    grocery_array = string_list.split(" ")
    groc_hash = Hash.new
    
    grocery_array.each do |x|
      groc_hash[x] = 0
    end
  end
  p groc_hash
end

def add_item (list, item, quantity)
  list[item] = quantity
  p list
end

def remove_item(groc_list, item_name)
  groc_list.delete(item_name)
  p groc_list
end

def update_item_qty (list, item, quantity)
  list[item] = quantity
  p list
end

def print_groc_list (list)
  list.each {|item, qty| p "You have " + qty.to_s + " " + item + "."}
end


# grocery_list = create_list ("carrots apples cereal pizza")
# add_item(grocery_list, "oranges", 4)
# remove_item(grocery_list, "apples")
# update_item_qty(grocery_list, "oranges", 12)
# print_groc_list (grocery_list)

new_groc_list = create_list ()
add_item(new_groc_list, "Lemonade", 2)
add_item(new_groc_list, "Tomatoes", 3)
add_item(new_groc_list, "Onions", 1)
add_item(new_groc_list, "Ice Cream", 4)
remove_item(new_groc_list, "Lemonade")
update_item_qty(new_groc_list, "Ice Cream", 1)
print_groc_list (new_groc_list)

################### Reflection #############
# What did you learn about pseudocode from working on this challenge?
# Pseudocode allows me to break down the problem into plain english. We used
# it to produce methods in a logical order

#What are the tradeoffs of using Arrays and Hashes for this challenge?
# For this challenge it would be more difficult to update and remove an item
# because you would have to iterate through the array to find the exactly string
# that matches your key.

# What does a method return?
# A method returns the last object it processes. If the method doesn't contain
# any logic, then it doesn't return anything.

# What kind of things can you pass into methods as arguments?
# You can pass any objects into a method as arguments. This includes strings,
# integers/floats, arrays, hash, symbols, etc.

# How can you pass information between methods?
# You can pass a method into a variable outside of any method. In this challenge
# we passed creat_list method into the new_groc_list variable. Thus the new
# hash created by the creat_list method can be passed into other methods.

# What concepts were solidified in this challenge, and what concepts are still confusing?
# I learned about creating, deleting, and updating hashes. I iterated over the
# hash. The thing that's confusing is that I got an error for the methods for updating,
# creating, and removing when I used a space between calling the method and its argument.
# For example in lines 81 to 86, if I leave a space between list this add_item (xxxx),
# I would get a syntax error for unexpected comma in my arguments. I'm guessing it's because
# I'm passing more than one thing alone with the hash as arugments because in line 87, my print
# method works just find passing in a hash with a space between the method name and argument.