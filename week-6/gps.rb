# Your Names
# 1) Shin Wang
# 2) Parker Smathers

# We spent [1.25] hours on this challenge.

# Bakery Serving Size portion calculator.
######### Original Solution
=begin
def serving_size_calc(item_to_make, num_of_ingredients)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  error_counter = 3
# line 14-18checks to see if the item_to_make is part of the library, however library[food]
# returns a value instead of a key...this doesn't make sense
  library.each do |food|
    if library[food] != library[item_to_make]
      error_counter += -1
    end
  end
# line 20-22 returns an error message when the item_to_make is not found
  if error_counter > 0
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end
# line 24 assigns the integer at the zero index of the array to serving_size
  serving_size = library.values_at(item_to_make)[0]
  remaining_ingredients = num_of_ingredients % serving_size
# line 27-32 uses the case logic to determine what items can be made from ingredients.
  case remaining_ingredients
  when 0
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
  else
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
  end
end
=end
######### Refactor
def serving_size_calc(item_to_make, num_of_ingredients)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}

    if library.has_key?(item_to_make) == false
      raise ArgumentError.new("#{item_to_make} is not a valid input")
    end
  
  serving_size = library[item_to_make]
  remaining_ingredients = num_of_ingredients % serving_size

  case remaining_ingredients
  when 0
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
  when 1..4
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: Cookies"
  else
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: Cake"
  end
end

##### Driver code
p serving_size_calc("pie", 12)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection
=begin
What did you learn about making code readable by working on this challenge?
I think there definitely something to be said about how code reads. When the code is confusing
to read due to odd ambiguous variable names or not knowing what type of object to expect,
you can get lost trying to figure out what the method is trying to do.

Did you learn any new methods? What did you learn about them?
The original solution had an interesting way of finding the error with a counter. The problem
was finding the counter with the value instead of the hash key. It was also restrictive in the
sense that the error_counter was limited to only three things in the hash. The built-in
method in the refactoring is a cleaner take on what the original code was trying to do. It's a
  good refresher on the method of .has_key?

What did you learn about accessing data in hashes? 
When you are calling the hash library[key], the value is returned. My pair and I mistakenly thought
that the key was being compared and wondered why the code didn't break. Now, the notion of accessing
the keys in a hash is a better choice.

What concepts were solidified when working through this challenge?
Enumerating through keys/value pairs with existing methods and using the ArgumentError call.
=end