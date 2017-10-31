class PlayerCpu

  include ValidInput

  def loop_steps(board)
    puts "Enter [0-8]:"
    # loop through until the game was won or tied
    until game_is_over(board) || tie(board)
      get_human_spot(board, board.player_one)
      if !game_is_over(board) && !tie(board)
        eval_board(board)
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

  def eval_board(board)
    spot = nil
    until spot
      spot = @level.get_best_move(board, board.player_two)
      if board.status[spot] != "X" && board.status[spot] != "O"
        board.set(spot, board.player_two)
      else
        spot = nil
      end
    end
  end

  def set_level(level)
    @level = level
  end

end