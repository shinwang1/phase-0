# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [4] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #Create an array with a length of 5 (b,i,n,g,o) as the contents.
  #Randomly select a letter from the 'bingo' array and pair it with a number from 1-100
  #Return the letter/number combination as a String (maybe Symbol).

# Check the called column for the number called.
  #Check for the letter called and locate the correct position in the array of arrays

# If the number is in the column, replace with an 'x'
  #method replaces the matching number with an 'x'

# Display a column to the console
  #print just one column of array with the number replaced by 'x'

# Display the board to the console (prettily)
  #display each column with new line after.

########################## Initial Solution

# class BingoBoard

#   def initialize(board)
#     @bingo_board = board
#     @bingo_letter_array = ['B', 'I', 'N', 'G', 'O']

#     new_board = []
#     counter = 0
#     while counter < @bingo_board.length
#       new_board << 'B' + @bingo_board[counter][0].to_s
#       new_board << 'I' + @bingo_board[counter][1].to_s
#       new_board << 'N' + @bingo_board[counter][2].to_s
#       new_board << 'G' + @bingo_board[counter][3].to_s
#       new_board << 'O' + @bingo_board[counter][4].to_s
#       counter +=1
#     end

#     @bingo_board = new_board.each_slice(5).to_a
#   end

#   def number_generator
#     call_rand_letter = @bingo_letter_array[rand(0..4)]
#     call_rand_number = rand(1..100)
#     @combo_number = call_rand_letter + call_rand_number.to_s
#     p "Is there a #{@combo_number}?"
#     return @combo_number
#     #return 'N97'      this is a checker for driver code
#   end

#   def column_and_number_check
#     @current_array = []
#     @bingo_index = 0
#     #number_generator

#     @bingo_board.each do |check_array|
#       if check_array.index(@combo_number) != nil #test code: ('N97') != nil
#         @bingo_index = check_array.index(@combo_number) #test code: ('N97')
        
#         @current_array = check_array
#         replace_number
#         print_array  
#       #else           this step was taken out because there are too many combinations
#         #column_and_number_check
#       end
#     end
#     print_board
#   end

#   def replace_number
#     @current_array[@bingo_index] = 'x'
#     return @current_array
#   end

#   def print_array
#     p "This array has the current number: "
#     p @current_array
#   end

#   def print_board
#     p "Here is the entire board: "
#     @bingo_board.each {|each_column| p each_column}
#   end

# end

################### Refactored Solution
class BingoBoard

  def initialize(board)
    @bingo_board = board
    @bingo_letter_array = ['B', 'I', 'N', 'G', 'O']
    p @bingo_board
    return @bingo_board
  end

  def number_generator
    call_rand_letter = @bingo_letter_array[rand(0..4)]
    call_rand_number = rand(1..100)
    @combo_number = call_rand_letter + call_rand_number.to_s
    p "Is there a #{@combo_number}?"
    #@combo_number = 'B47'  #driver code
    return @combo_number
    #return 'B47'      #this is a checker for driver code
  end

  def column_and_number_check
    @bingo_index = 0
    @array_index = 0

    if @combo_number[0] = 'B'
      @array_index = 0
      replace_number
    elsif @combo_number[0] = 'I'
      @array_index = 1
      replace_number
    elsif @combo_number[0] = 'N'
      @array_index = 2
      replace_number
    elsif @combo_number[0] = 'G'
      @array_index = 3
      replace_number
    elsif @combo_number[0] = 'O'
      @array_index = 4
      replace_number
    end
  end

  def replace_number
      if @bingo_board[@array_index].index {|match| match == @combo_number[1..-1].to_i} != nil
        @bingo_index = @bingo_board[@array_index].index {|match| match == @combo_number[1..-1].to_i}
        @bingo_board[@array_index][@bingo_index] = 'x'
      else
        p "Number not found."
      end
      return @bingo_board[@array_index]
  end

  def print_board
    p "Here is the entire board: "
    @bingo_board.each {|each_column| p each_column}
  end

end

########################### DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

p "New Game"
new_game = BingoBoard.new(board)
new_game.number_generator

new_game.column_and_number_check
new_game.print_board


#Reflection
=begin
  
How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
The pseudocoding wasn't difficult; however, there are many smaller steps that I could've taken.
I noticed that there were going to be more steps after I started to write the code.
I think with experience, I'll be able to take more steps within my pseudocode.

What are the benefits of using a class for this challenge?
Once the bingo board is generated, it's information is stored for that session. You can run
this game enough times until it completes.

How can you access coordinates in a nested array?
You access coordinates in the nested array through knowing their indices and how many layers of
the nest. I can see another way of accessing certain positions through calculations, but I can't
think of a use case yet. The current way that I have is by enumerating through the nested arrays
  and finding object matches.

What methods did you use to access and modify the array?
The methods that I relied on was .each, .slice, and .index. I found .index to be useful for returning the
index of objects in the array. The .slice was useful when I needed to form new nested arrays.

Give an example of a new method you learned while reviewing the Ruby docs.
Based on what you see in the docs, what purpose does it serve, and how is it called?
The .slice method was used in combination with the .to_a to turn my large array into the bingo
board of nested arrays.
For example: 
long_array = [1,2,3,4,5,6,7,8,9,10]
long_array.slice(5).to_a => [[1,2,3,4,5][6,7,8,9,10]]

How did you determine what should be an instance variable versus a local variable?
For variables that I need to pass into other methods within the Class, I use instance variables.
If it's a counter than I am using within a method, then I use local variables.

What do you feel is most improved in your refactored solution?
In the first solution. I adjusted the board to a new board with each number changed to a string
with its corresponding BINGO letter. In the refactoring, I didn't adjust the original board.
  
=end
