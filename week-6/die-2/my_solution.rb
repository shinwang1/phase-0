# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself ].
# I spent [1] hours on this challenge.

# Pseudocode

# Input: Array of strings, die = Die.new(['A', 'B', 'C', 'D', 'E', 'F'])
# Output:
# Die#roll returns one of the strings in the array
#   Die.roll # returns one of ['A', 'B', 'C', 'D', 'E', 'F'], randomly
# 	Die.new is passed an empty array, raise ArgumentError
#   Die.sides # still returns the number of sides according to the length of the array
# 

# Steps:
# Initialize a die by taking in an array of strings
# Check to see if the arugment passed in is empty
# Save the argument labels as an instance variable for the class
# Save the number of sides passed in from the argument as an instance variable
# Write a method 'sides' that returns the sides passed into the die
# Write a method that randomly returns a side within the array by its index.

# Initial Solution

class Die
  def initialize(labels)
  	if labels.empty? == true
  		raise ArgumentError.new("You cannot have an Die without sides.")
  	else
  		@labels = labels.sort
      @sides = labels.length
  	end
  end

  def sides
  	return @sides
  end

  def roll
  	return @labels[rand(0...@labels.length)]
  end
end

# Refactored Solution
# N/A

# Reflection
=begin
What were the main differences between this die class and the last one you created in terms of implementation?
Did you need to change much logic to get this to work?
The biggest difference with the die class comes from handling the array agument passed in. I had to parse through
a data structure of an array. This, to me, demostrate another way add functionality to the type of die game.

What does this exercise teach you about making code that is easily changeable or modifiable? 
Each method does a certain set of tasks and can be called upon repeatedly to do those sets of tasks.
They are modular in the sense that the whole class doesn't break when one method breaks. When each method
is organized well, it benefits the writer of the code and the people who review the code.

What new methods did you learn when working on this challenge, if any?
Nothing new other than randomizing the index within an array.

What concepts about classes were you able to solidify in this challenge?
The methods within the Class can handle smaller pieces of the code to give the class more funtionality.
=end