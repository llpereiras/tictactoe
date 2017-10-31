class Hard
  
  include AttackDefense
  include Rules
  
  def get_best_move(actual_board, oponent)
    spaces = actual_board.status
    spaces = actual_board.get_available_spaces
    return if spaces.size == 0
    ad = attack_or_defense(actual_board)
    return ad if ad
    n = rand(0..spaces.count)
    return spaces[n].to_i
  end

end