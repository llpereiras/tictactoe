require_relative "attack_defense"
require_relative "level"

class Hard
  
  include AttackDefense
  include Level
  include Rules
  
  def get_best_move(actual_board, next_player)
    spaces = actual_board.status
    spaces = get_available_spaces(spaces)
    best_move = nil
    spaces.each do |as|
      spaces[as.to_i] = actual_board.player_two
      if get_game_over(spaces)
        best_move = as.to_i
        spaces[as.to_i] = as
        ad = attack_or_defense(spaces)
        return ad if ad
        return best_move
      else
        spaces[as.to_i] = actual_board.player_one
        if get_game_over(spaces)
          best_move = as.to_i
          spaces[as.to_i] = as
          ad = attack_or_defense(spaces)
          return ad if ad
          return best_move
        else
          spaces[as.to_i] = as
        end
      end
    end

    p '-----------------------spaces-------------------------'
    p spaces
    p '------------------------------------------------'
    ad = attack_or_defense(spaces)
    return ad if ad

    if best_move
      return best_move
    else
      n = rand(0..spaces.count)
      return spaces[n].to_i
    end
  end

  # def get_best_move(board, next_player, depth = 0, best_score = {})
  #   spaces = get_available_spaces(board)
  #   best_move = nil
  #   spaces.each do |as|
  #   spaces.each do |as|
  #     board[as.to_i] = @com
  #     if game_is_over(board)
  #       best_move = as.to_i
  #       board[as.to_i] = as
  #       return best_move
  #     else
  #       board[as.to_i] = @hum
  #       if game_is_over(board)
  #         best_move = as.to_i
  #         board[as.to_i] = as
  #         return best_move
  #       else
  #         board[as.to_i] = as
  #       end
  #     end
  #   end
  #   if best_move
  #     return best_move
  #   else
  #     n = rand(0..available_spaces.count)
  #     return available_spaces[n].to_i
  #   end
  # end

end