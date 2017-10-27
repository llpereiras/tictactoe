require_relative "level"

class Hard
  
  include Level
  include Rules

  def get_best_move(board, next_player)
    spaces = get_available_spaces(board)
    best_move = nil

    oponent = "X"
    oponent = "O" if next_player == "X"

    return 0 if board[0] == 0 && board[1] == next_player && board[2] == next_player
    return 0 if board[0] == 0 && board[4] == next_player && board[8] == next_player
    return 0 if board[0] == 0 && board[3] == next_player && board[6] == next_player
    
    return 1 if board[1] == 1 && board[0] == next_player && board[2] == next_player
    return 1 if board[1] == 1 && board[4] == next_player && board[7] == next_player

    return 2 if board[2] == 2 && board[0] == next_player && board[1] == next_player
    return 2 if board[2] == 2 && board[4] == next_player && board[6] == next_player
    return 2 if board[2] == 2 && board[5] == next_player && board[8] == next_player
    
    return 3 if board[3] == 3 && board[0] == next_player && board[6] == next_player
    return 3 if board[3] == 3 && board[4] == next_player && board[5] == next_player
    
    return 4 if board[4] == 4 && board[0] == next_player && board[8] == next_player
    return 4 if board[4] == 4 && board[1] == next_player && board[7] == next_player
    return 4 if board[4] == 4 && board[2] == next_player && board[6] == next_player
    return 4 if board[4] == 4 && board[3] == next_player && board[5] == next_player
    
    return 5 if board[5] == 5 && board[2] == next_player && board[8] == next_player
    return 5 if board[5] == 5 && board[3] == next_player && board[4] == next_player

    return 6 if board[6] == 6 && board[0] == next_player && board[3] == next_player
    return 6 if board[6] == 6 && board[2] == next_player && board[4] == next_player
    return 6 if board[6] == 6 && board[7] == next_player && board[8] == next_player

    return 7 if board[7] == 7 && board[1] == next_player && board[4] == next_player
    return 7 if board[7] == 7 && board[6] == next_player && board[8] == next_player
    
    return 8 if board[8] == 8 && board[0] == next_player && board[4] == next_player
    return 8 if board[8] == 8 && board[2] == next_player && board[5] == next_player
    return 8 if board[8] == 8 && board[6] == next_player && board[7] == next_player

    return 0 if board[0] == 0 && board[1] == oponent && board[2] == oponent
    return 0 if board[0] == 0 && board[4] == oponent && board[8] == oponent
    return 0 if board[0] == 0 && board[3] == oponent && board[6] == oponent
    
    return 1 if board[1] == 1 && board[0] == oponent && board[2] == oponent
    return 1 if board[1] == 1 && board[4] == oponent && board[7] == oponent

    return 2 if board[2] == 2 && board[0] == oponent && board[1] == oponent
    return 2 if board[2] == 2 && board[4] == oponent && board[6] == oponent
    return 2 if board[2] == 2 && board[5] == oponent && board[8] == oponent
    
    return 3 if board[3] == 3 && board[0] == oponent && board[6] == oponent
    return 3 if board[3] == 3 && board[4] == oponent && board[5] == oponent
    
    return 4 if board[4] == 4 && board[0] == oponent && board[8] == oponent
    return 4 if board[4] == 4 && board[1] == oponent && board[7] == oponent
    return 4 if board[4] == 4 && board[2] == oponent && board[6] == oponent
    return 4 if board[4] == 4 && board[3] == oponent && board[5] == oponent
    
    return 5 if board[5] == 5 && board[2] == oponent && board[8] == oponent
    return 5 if board[5] == 5 && board[3] == oponent && board[4] == oponent

    return 6 if board[6] == 6 && board[0] == oponent && board[3] == oponent
    return 6 if board[6] == 6 && board[2] == oponent && board[4] == oponent
    return 6 if board[6] == 6 && board[7] == oponent && board[8] == oponent

    return 7 if board[7] == 7 && board[1] == oponent && board[4] == oponent
    return 7 if board[7] == 7 && board[6] == oponent && board[8] == oponent
    
    return 8 if board[8] == 8 && board[0] == oponent && board[4] == oponent
    return 8 if board[8] == 8 && board[2] == oponent && board[5] == oponent
    return 8 if board[8] == 8 && board[6] == oponent && board[7] == oponent

    # If dont have possibilits of attack or defense
    n = rand(0..spaces.count)
    return spaces[n].to_i
  end
end