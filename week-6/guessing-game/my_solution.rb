# Build a simple guessing game


# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# :high if the guess is larger than the answer
# :correct if the guess is equal to the answer
# :low if the guess is lower than the answer
# return true if the most recent guess was correct and false otherwise

# Steps:


# Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
  	if guess > @answer
  		return :high
  	elsif guess == @answer
  		return :correct
  	else
  		return :low
  	end
  end

  def solved?
  	return false unless :correct
  	end
  end
  # Make sure you define the other required methods, too
end




# Refactored Solution






# Reflection
=begin
How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
When should you use instance variables? What do they do for you?
Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
Why do you think this code requires you to return symbols? What are the benefits of using symbols?
=end