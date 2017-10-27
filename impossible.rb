require_relative "level"

class Hard
  
  include Level
  include Rules
  
  def get_best_move(board, next_player)
    spaces = get_available_spaces(board)
    spaces.each do |as|
      if not get_game_over(board)
        best_move = as.to_i
        board[as.to_i] = as
        return best_move
      else
        if not get_game_over(board)
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

def minimax(board, depth)
  depth += 1
  scores = [] # an array of scores
  moves = []  # an array of moves

  # Populate the scores array, recursing as needed
  get_available_spaces(board).each do |move|
      possible_game = board.get_new_state(move)
      scores.push minimax(possible_game, depth)
      moves.push move
  end

  # Do the min or the max calculation
  if game.active_turn == @player
      # This is the max calculation
      max_score_index = scores.each_with_index.max[1]
      @choice = moves[max_score_index]
      return scores[max_score_index]
  else
      # This is the min calculation
      min_score_index = scores.each_with_index.min[1]
      @choice = moves[min_score_index]
      return scores[min_score_index]
  end
end