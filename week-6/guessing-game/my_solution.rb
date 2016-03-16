# Build a simple guessing game


# I worked on this challenge [by myself].
# I spent [2] hours on this challenge.

# Pseudocode

# Input: the Class is initialize with an answer
#   The method guess takes in a number as its guess arugment

# Output:
# :high if the guess is larger than the answer
# :correct if the guess is equal to the answer
# :low if the guess is lower than the answer
# The solved? method returns true if the most recent guess was correct
#    and false otherwise. This means that solved? takes the latest guess.

# Steps:
=begin
The method 'initialize' takes in the correct answer.

The method 'guess' checks to see if the user guess matches the answer

The method 'solved?' updates to the latest guess and returns true or false.
  
=end


# Initial Solution
=begin
class GuessingGame
  def initialize(answer)
    @answer = answer
    @last_guess = nil
    @last_result = nil
  end

  def guess(guess)

    @guess_library = {
      :high => :high,
      :correct => :correct,
      :low => :low
    }

  	if guess > @answer
      @last_guess = guess
      @last_result = @guess_library[:high]
      puts "Oops! Your last guess #{@last_guess} was #{@last_result}."
  		return @last_result
  	elsif guess == @answer
      @last_guess = guess
      @last_result = @guess_library[:correct]
      puts "Your last guess #{@last_guess} was #{@last_result}."
  		return @last_result
  	else
      @last_guess = guess
      @last_result = @guess_library[:low]
      puts "Oops! Your last guess #{@last_guess} was #{@last_result}."
  		return @last_result
  	end
    
  end

  def solved?
  	if @last_result == :correct
      return true
    else
      return false
  	end
  end
end
=end

# Refactored Solution
# Steps:
=begin
The method 'initialize' takes in the correct answer. It prompts the user for a guess.
It keeps prompting the user until the correct answer is guessed.

The method 'guess' checks to see if the user guess matches the answer

The method 'solved?' updates to the latest guess and returns true or false.
  
=end

class GuessingGame
  def initialize(answer)
    @answer = answer
    @last_guess = nil
    @last_result = nil

    get_user_guess #COMMENT this method out when running rspec.
    #this method works to prompt user for input until the right answer in irb
  end

  def guess(guess)

    @guess_library = {
      :high => :high,
      :correct => :correct,
      :low => :low
    }

    if guess > @answer
      @last_guess = guess
      @last_result = @guess_library[:high]
      puts "Oops! Your last guess #{@last_guess} was #{@last_result}."
      return @last_result
    elsif guess == @answer
      @last_guess = guess
      @last_result = @guess_library[:correct]
      return @last_result
    else
      @last_guess = guess
      @last_result = @guess_library[:low]
      puts "Oops! Your last guess #{@last_guess} was #{@last_result}."
      return @last_result
    end
  end

  def solved?
    if @last_result == :correct
      puts "Your last guess #{@last_guess} was #{@last_result}."
      return true
    else
      return false
    end
  end

  def get_user_guess
    until solved?  
      p "Enter your guess: "
      @last_guess = gets.chomp.to_i
      guess(@last_guess)
    end
  end

end

# Reflection
=begin
How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
There are probably better examples, but I think of a car. For example: You can have break lights.
When you put the car into park, the break lights come on. The same thing happens when you turn on the car, it comes
on for a split second. It blinks all at once when you turn on the emergency lights.
It also lights up when you press the breaks. All these can represent different methods of accessing the brake
lights system; however, the methods all belong to some other system.

When should you use instance variables? What do they do for you?
I would use instance variables to represent arguments utilized within the same Class.
This allows me to access to the same variables within the Class.

Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
Flow control in this challenge was pretty simple since it's only three choices: high, low, or correct.

Why do you think this code requires you to return symbols? What are the benefits of using symbols?
Symbols are immutable and unique. This mean thats the symbol cannot be changed and has a unique object ID once
established in the Class. This also means that the symbol :high can be changed to a string "low" or a symbol :low.
=end