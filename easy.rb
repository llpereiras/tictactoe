require_relative "level"

class Easy
  
  include Level

  def get_best_move(board, next_player)
    spaces = get_available_spaces(board.status)
    return spaces.first.to_i
  end
  
end