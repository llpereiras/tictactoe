class Easy
  
  def get_best_move(board, next_player)
    spaces = board.get_available_spaces
    return spaces.first.to_i
  end
  
end