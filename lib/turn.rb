def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input.to_i - 1
end

def valid_move?(board, index)
  index.between?(0, 8) && !position_taken?(board, index) ? true : false
end

def position_taken?(board, index)
  board[index] === "X" || board[index] ==="O" ? true : false
end

def move(board, index, character = "X")
  board[index] = character
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  input_to_index(input)

  if input_to_index(input) === valid_move?(board, index)
    make the move for input
  else
     puts "Please enter 1-9:"
     ask for input again until you get a valid input
  end
  
end
