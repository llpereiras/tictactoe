require "pry"
module AttackDefense

  def attack_or_defense(b)

    oponent = b.player_one
    ai = b.player_two

    spaces = b.status

    next_move = nil

    # Attack - try win
    next_move = 0 if spaces[0] == 0 && spaces[1] == ai && spaces[2] == ai
    next_move = 0 if spaces[0] == 0 && spaces[4] == ai && spaces[8] == ai 
    next_move = 0 if spaces[0] == 0 && spaces[3] == ai && spaces[6] == ai

    next_move = 1 if spaces[1] == 1 && spaces[0] == ai && spaces[2] == ai
    next_move = 1 if spaces[1] == 1 && spaces[4] == ai && spaces[7] == ai

    next_move = 2 if spaces[2] == 2 && spaces[0] == ai && spaces[1] == ai
    next_move = 2 if spaces[2] == 2 && spaces[4] == ai && spaces[6] == ai
    next_move = 2 if spaces[2] == 2 && spaces[5] == ai && spaces[8] == ai

    next_move = 3 if spaces[3] == 3 && spaces[0] == ai && spaces[6] == ai
    next_move = 3 if spaces[3] == 3 && spaces[4] == ai && spaces[5] == ai
    
    next_move = 4 if spaces[4] == 4 && spaces[0] == ai && spaces[8] == ai
    next_move = 4 if spaces[4] == 4 && spaces[1] == ai && spaces[7] == ai
    next_move = 4 if spaces[4] == 4 && spaces[2] == ai && spaces[6] == ai
    next_move = 4 if spaces[4] == 4 && spaces[3] == ai && spaces[5] == ai

    next_move = 5 if spaces[5] == 5 && spaces[2] == ai && spaces[8] == ai
    next_move = 5 if spaces[5] == 5 && spaces[3] == ai && spaces[4] == ai

    next_move = 6 if spaces[6] == 6 && spaces[0] == ai && spaces[3] == ai
    next_move = 6 if spaces[6] == 6 && spaces[2] == ai && spaces[4] == ai
    next_move = 6 if spaces[6] == 6 && spaces[7] == ai && spaces[8] == ai

    next_move = 7 if spaces[7] == 7 && spaces[1] == ai && spaces[4] == ai
    next_move = 7 if spaces[7] == 7 && spaces[6] == ai && spaces[8] == ai

    next_move = 8 if spaces[8] == 8 && spaces[0] == ai && spaces[4] == ai
    next_move = 8 if spaces[8] == 8 && spaces[2] == ai && spaces[5] == ai
    next_move = 8 if spaces[8] == 8 && spaces[6] == ai && spaces[7] == ai

    return next_move if next_move

    # Defense - try don't lose.
    next_move = 0 if spaces[0] == 0 && spaces[1] == oponent && spaces[2] == oponent
    next_move = 0 if spaces[0] == 0 && spaces[4] == oponent && spaces[8] == oponent
    next_move = 0 if spaces[0] == 0 && spaces[3] == oponent && spaces[6] == oponent

    next_move = 1 if spaces[1] == 1 && spaces[0] == oponent && spaces[2] == oponent
    next_move = 1 if spaces[1] == 1 && spaces[4] == oponent && spaces[7] == oponent

    next_move = 3 if spaces[3] == 3 && spaces[0] == oponent && spaces[6] == oponent
    next_move = 3 if spaces[3] == 3 && spaces[4] == oponent && spaces[5] == oponent
    
    next_move = 4 if spaces[4] == 4 && spaces[0] == oponent && spaces[8] == oponent
    next_move = 4 if spaces[4] == 4 && spaces[1] == oponent && spaces[7] == oponent
    next_move = 4 if spaces[4] == 4 && spaces[2] == oponent && spaces[6] == oponent
    next_move = 4 if spaces[4] == 4 && spaces[3] == oponent && spaces[5] == oponent
    
    next_move = 5 if spaces[5] == 5 && spaces[2] == oponent && spaces[8] == oponent
    next_move = 5 if spaces[5] == 5 && spaces[3] == oponent && spaces[4] == oponent

    next_move = 6 if spaces[6] == 6 && spaces[0] == oponent && spaces[3] == oponent
    next_move = 6 if spaces[6] == 6 && spaces[2] == oponent && spaces[4] == oponent
    next_move = 6 if spaces[6] == 6 && spaces[7] == oponent && spaces[8] == oponent

    next_move = 7 if spaces[7] == 7 && spaces[1] == oponent && spaces[4] == oponent
    next_move = 7 if spaces[7] == 7 && spaces[6] == oponent && spaces[8] == oponent
    
    next_move = 8 if spaces[8] == 8 && spaces[0] == oponent && spaces[4] == oponent
    next_move = 8 if spaces[8] == 8 && spaces[2] == oponent && spaces[5] == oponent
    next_move = 8 if spaces[8] == 8 && spaces[6] == oponent && spaces[7] == oponent

    next_move
  end

end