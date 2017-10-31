class CpuCpu

    include ValidInput

    def loop_steps(board)
      until game_is_over(board) || tie(board)
        board.print_board
        get_robo_spot(board, board.player_one)
        if !game_is_over(board) && !tie(board)
          board.print_board
          get_robo_spot(board, board.player_two)
        end
      end
    end

    def get_robo_spot(board, player)
      print "The player #{Colorize.print(player)} are thinking"
      (0..3).each{ sleep 1; print '.';}
      puts '' # new_line to prevent board broken
      spot = nil
      until spot
        spot = @level.get_best_move(board, player)
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