class Normal
  
  include AttackDefense
  include Rules

  def get_best_move(board, oponent)
    
    ad = attack_or_defense(board)
    return ad if ad

    # If dont have possibilits of attack or defense
    spaces = board.get_available_spaces
    n = rand(0..spaces.count)
    return spaces[n].to_i
  end
end