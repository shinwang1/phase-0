# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [with: Patrick Dewitte].
# I spent [1.5] hours on this challenge.

# Pseudocode

# Input: 16 integers
# Output: true or false
# Steps:
# -Convert integers into a string
# -Find length of string
# -Raise argument error if input is not equal to 16 digits
# -Divide string in to array of single digits
# -Use enumerator method to convert into array of numbers
# -Create counter for position to reference when using method
# -Set counter equal to 0, increment up by 2
# -Double every even index
# -IF each object is greater than 9, split object into two numbers
# -Add everything in the array
# -IF total % 10 == 0 return true


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

# class CreditCard
#   def initialize(card_number)
#     card_array = []
#     @card_string = card_number.to_s
#     if @card_string.length != 16
#       raise ArgumentError.new("This is not a valid Credit Card Number!")
#     end
#   end
  
#   def check_card
#     card_array = @card_string.split("")
#     card_array.map! {|x| x.to_i}
    
#     index_counter = 0
#     8.times do |x|
#       x = card_array[index_counter] * 2
#       card_array[index_counter] = x
#       index_counter += 2 
#     end
    
#     card_array.map! {|x| x.to_s}
    
#     new_array = []
#     card_array.each do |x|
#       if x.length > 1
#         new_array << x.split("")
#       else
#         new_array << x
#       end
#     end
#     new_array.flatten!
    
#     new_array.map! {|x| x.to_i} 
    
#     array_sum = new_array.inject(0) {|sum, x| sum + x}

#     if array_sum % 10 == 0
#       return true
#     else
#       return false
#     end
#   end

# end


###### Driver Code
#run = CreditCard.new(4563960122001999)
#run.check_card
#run = CreditCard.new(456396012200199)
#run.check_card


# Refactored Solution
class CreditCard
  def initialize(card_number)
    @card_string = card_number.to_s
    if @card_string.length != 16
      raise ArgumentError.new("This is not a valid Credit Card Number!")
    end
  end
  
  def check_card
    card_array = @card_string.split("").map! {|x| x.to_i}
    
    index_counter = 0
    8.times do |x|
      x = card_array[index_counter] * 2
      card_array[index_counter] = x
      index_counter += 2 
    end
    
    card_array.map! {|x| x.to_s}
    
    new_array = []
    card_array.each do |x|
      if x.length > 1
        new_array << x.split("")
      else
        new_array << x
      end
    end

    new_array.flatten!.map! {|x| x.to_i}
    
    array_sum = new_array.inject(0) {|sum, x| sum + x}

    if array_sum % 10 == 0
      return true
    else
      return false
    end
  end

end


# Reflection
=begin
What was the most difficult part of this challenge for you and your pair?
Overall it was pretty smooth. I think there were a lot of pieces to keep track of during
the challenge. We decided to write out each step and incrementally checked how our objects
were manipulated.

What new methods did you find to help you when you refactored?
I didn't find any new methods; however, I was able to string a few methods together.

What concepts or learnings were you able to solidify in this challenge?
I was able to practice with destructive and non-destructive methods. We also practiced
using iterations and enumerables.

=end