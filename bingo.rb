bingo

class Bingo

  def initialize(number_of_players)
    @boards = build_boards
  end
  
  def mark_board(let, num)
    @boards.each do |player, board|
      check_board(board, let, num)
    end
  end
  
  def bingo_board
    
  end
  
  private
  
  def build_boards(number_of_players)
    @boards[player] = []
  end
  
  def check_board(board, let, num)
    if true
      # at that board param change num to == x
    end
  end
  
  def check_for_match(board_object)
    
  end
end


bingo = Bingo.new(3)

# draw bingo ball
# number call logic

# check for winners