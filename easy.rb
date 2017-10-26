require_relative "level"

class Easy
  
  include Level

  def get_best_move(board, next_player)
    available_spaces = []
    board.each do |s|
      if s != "X" && s != "O"
        available_spaces << s
      end
    end
    n = rand(0..available_spaces.count)
    return available_spaces[n].to_i
  end
end