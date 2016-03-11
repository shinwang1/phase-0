# Research Methods

# I spent [3hr] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution: Shin Wang

def my_array_finding_method(source, thing_to_find)
  final_array = []
  source.each do |word|
    if word.class == thing_to_find.class && word.include?(thing_to_find) == true
      final_array << word
    end
  end
  return final_array
end

def my_hash_finding_method(source, thing_to_find)
  final_array = []
  source.each do |key, value|
    if value == thing_to_find
      final_array << key
    end
  end
  return final_array
end

# Identify and describe the Ruby method(s) you implemented.
# Methods used: .each .class .include?
# .each is an enumerable that executes an action to each object in the array.
# .class determines the object type in question
# .include? is able to look within a string to find elememts of the string that are matching.

# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 3
def my_array_sorting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_sorting_method(source)
   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5
def my_array_splitting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_splitting_method(source, age)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
# With the array, I first enumerated through the array to find whether a particular
# letter was found within each object of the array. I was able to achieve this with the
# .include? method and passing in the thing_to_find parameter. I hit a wall when comparing
# fixnum to strings. Thus, I had to organize the logic to see if the class of the object
# matched and if it's inside the string.
#
# With the hash, I enumerated through the hash. Since each key/value pair can be targeted,
# I first test whether the parameter to find matched the value. If the value matched, then
# I passed the key into a new array.


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#