module Level
# This module should be a Interface like Java or Php
  def get_best_move
    puts "Check the level of dificult"
  end

  def get_available_spaces(board)
    available_spaces = []
    board.each {|s| available_spaces << s if s != "X" && s != "O" }
    available_spaces
  end

end