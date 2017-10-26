require_relative "level"

class Hard
  
  include Level
  include Rules

  def get_best_move(board, next_player)
    spaces = get_available_spaces(board)
    best_move = nil
    spaces.each do |as|
      board[as.to_i] = next_player
      if get_game_over(board)
        best_move = as.to_i
        board[as.to_i] = as
        return best_move
      else
        board[as.to_i] = @hum
        if get_game_over(board)
          best_move = as.to_i
          board[as.to_i] = as
          return best_move
        else
          board[as.to_i] = as
        end
      end
    end
    if best_move
      return best_move
    else
      n = rand(0..spaces.count)
      return spaces[n].to_i
    end
  end
end