class PlayerPlayer

  include ValidInput

  def loop_steps(board)
    until game_is_over(board) || tie(board)
      puts "Enter your choose player #{Colorize.print(board.player_one) } between [0-8]:"
      get_human_spot(board, board.player_one)
      if !game_is_over(board) && !tie(board)
        board.print_board
        puts "Enter your choose player #{Colorize.print(board.player_two) } between [0-8]:"
        get_human_spot(board, board.player_two)
      end
      board.print_board
    end
  end
  
  def get_human_spot(board, player)
    spot = nil
    until spot
      spot = check_valid_input
      if board.status[spot] != "X" && board.status[spot] != "O"
        board.set(spot, player)
      else
        spot = nil
      end
    end
  end

  def game_is_over(b)
    b.get_game_over(b.status)
  end

  def tie(b)
    b.status.all? { |s| s == "X" || s == "O" }
  end

  def set_level(level)
    @level = level
  end

end