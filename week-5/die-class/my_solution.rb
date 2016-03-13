# Die Class 1: Numeric

# I worked on this challenge [by myself]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: Initialize a die with number of sides greater than 1. Roll a die
# Output: How many sides the die has. A number between 1 and the stated sides.
# Steps:
# Initialize a die with a specific number of sides greater than 1
# Return the number of sides for the die
# Return a random number between 1 and the specified number of sides.


# 1. Initial Solution

class Die
  def initialize(sides)
  	if sides < 1
  		raise ArgumentError.new("Die cannot have less than 1 side.")
  	end
    @sides = sides
  end

  def sides
  	p "This is a #{@sides} die."
  	return @sides
  end

  def roll
    return rand(1..@sides)
  end
end


# 3. Refactored Solution
# N/A

# 4. Reflection
#What is an ArgumentError and why would you use one?
# ArgumentError has a class of StandardError. It is used when the argument called into
# a method is wrong. Think of it as a check to make sure that the method functions properly
# or restriction on inputs.

#What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
# I used instance variables within the class and the random number method to generate outputs
# for the die roll. This challenge wasn't too bad. The video helped with basics of setting up a Class.
# I did play around with limiting the results of the die roll to a range. 

#What is a Ruby class? Why would you use a Ruby class?
# By Ruby-doc, they are defined as first-class objects. Think of class as a way for you to
# run the same methods on different objects. Within a Class, you can have methods that do one
# particular function and call that methods when you need to. You can also have different
# instance or even class variables used in separate methods within your class.

#What is the difference between a local variable and an instance variable?
# Local variable is used within one method, and instance variable can be used between
# methods of the same class.

#Where can an instance variable be used?
# Instance variables can be used in an instance of a class.