class TicTacToe
  
  def initialize
    @board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  end
      
WIN_COMBINATIONS = [
      [0,1,2], 
      [3,4,5], 
      [6,7,8], 
      [0,3,6], 
      [0,4,8], 
      [1,4,7], 
      [2,5,8], 
      [2,4,6]
      ]
      
   def display_board
      puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
      puts "-----------"
      puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
      puts "-----------"
      puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
   end
   def input_to_index(input)
          input.to_i - 1
   end
   def move(index, current_player)
          @board[index] = current_player
   end
   def position_taken?(index)
        if @board[index] == " "
          return false
        elsif @board[index] == ""
          return false
        elsif @board[index] == nil
          return false
        else 
          return true
      end 
   end
   def valid_move?(index)
        if @board[index] == "X" || @board[index] == "O" || !index.between?(0,8)
          return false
        else
          return true
      end
   end
      
      
end
      
      