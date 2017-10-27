require_relative "level"
require_relative "rules"
require_relative "attack_defense"

class Normal
  
  include AttackDefense
  include Level
  include Rules

  def get_best_move(board, next_player)
    
    spaces = board.status
    ad = attack_or_defense(spaces)
    return ad if ad
    
    spaces = get_available_spaces(spaces)

    # If dont have possibilits of attack or defense
    n = rand(0..spaces.count)
    return spaces[n].to_i
  end
end