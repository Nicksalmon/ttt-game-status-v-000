# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end



WIN_COMBINATIONS = [
  [0,1,2], [3,4,5], [6,7,8], [0,4,8], [0,3,6], [1,4,7], [2,5,8], [2,4,6]

]

def won?(board)
  WIN_COMBINATIONS.detect do |array|
    board[array[0]] == board[array[1]] && board[array[1]] == board[array[2]] && (board[array[0]]=='X' ||board[array[0]]=='O')
  end
end

def full?(board)
  board.all? do |x|
    x == 'X' || x == 'O'
end
end

def draw?(board)
  if full?(board) && !won?(board)
return true
   end
 end

def over?(board)
  if draw?(board) || won?(board)
      return true
    end
end

def winner(board)
  if won?(board)
     array_won = won?(board)
     return board[array_won[0]]
   end
end
# def won by using detect and WIN_COMBINATIONS
# YOU CAN DO THIS BE PATIENT AND DILIGNT
