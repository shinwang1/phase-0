# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #Create an array with a length of 5 (b,i,n,g,o) as the contents.
  #Randomly select a letter from the 'bingo' array and pair it with a number from 1-100
  #Return the letter/number combination as a String (maybe Symbol).

# Check the called column for the number called.
  #board[0] = 'B'
  #board[1] = 'I'
  #board[2] = 'N'
  #board[3] = 'G'
  #board[4] = 'O'
  #

# If the number is in the column, replace with an 'x'
  #method replaces the matching number with an 'x'

# Display a column to the console
  #print just one column of array with the number replaced by 'x'

# Display the board to the console (prettily)
  #display each column with new line after.

# Initial Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
    @bingo_letter_array = ['B', 'I', 'N', 'G', 'O']
    @bingo_board[0].map! {|b| 'B' + b.to_s}
    @bingo_board[1].map! {|i| 'I' + i.to_s}
    @bingo_board[2].map! {|n| 'N' + n.to_s}
    @bingo_board[3].map! {|g| 'G' + g.to_s}
    @bingo_board[4].map! {|o| 'O' + o.to_s}
    return @bingo_board
  end

  def number_generator
    call_rand_letter = @bingo_letter_array[rand(0..4)]
    call_rand_number = rand(1..100)
    @combo_number = call_rand_letter + call_rand_number.to_s
    p "Is there a #{@combo_number}?"
    return @combo_number
    #return 'B44'      this is a checker
  end

  def column_and_number_check
    @current_array = []
    @bingo_index = 0
    #number_generator

    @bingo_board.each do |check_array|
      if check_array.index(@combo_number) != nil
        @bingo_index = check_array.index(@combo_number)
        
        @current_array = check_array
        replace_number
        print_array  
      #else           this step was taken out because there are too many combinations
        #column_and_number_check
      end
    end
    print_board
  end

  def replace_number
    @current_array[@bingo_index] = 'x'
    return @current_array
  end

  def print_array
    p @current_array
  end

  def print_board
    @bingo_board.each {|each_column| p each_column}
  end

end

# Refactored Solution



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.number_generator
new_game.column_and_number_check
new_game.print_board


#Reflection
