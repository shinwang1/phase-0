# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

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
# 
#
#

# Initial Solution

class Die
  def initialize(labels)
  	if labels.empty? == true
  		raise ArgumentError.new("You cannot have an Die without sides.")
  	elsif labels.length == 1
  		@labels = labels[0]
  	else
  		@labels = labels.sort
  	end
  	@sides = labels.length
  end

  def sides
  	#p "The die has #{@sides} sides."
  	return @sides
  end

  def roll
  	return @labels
  end
end



# Refactored Solution








# Reflection
=begin
What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
What does this exercise teach you about making code that is easily changeable or modifiable? 
What new methods did you learn when working on this challenge, if any?
What concepts about classes were you able to solidify in this challenge?
=end