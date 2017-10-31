require_relative "boot"

class Tictactoe

  include ValidInput

  def initialize
    @board = Board.new()
    @board.set_player_one('O')
    @board.set_player_two('X')
  end

  def start_game

    @board.choose_mode

    until @mode
      input = check_valid_input

      case input
      when 1
        @mode = PlayerCpu.new
      when 2
        @mode = PlayerPlayer.new
        @level = Easy.new
      when 3
        @mode = CpuCpu.new
        @level = Hard.new
      end

    end

    @board.choose_level unless @level
    until @level
      input = check_valid_input
      if input == 1
        @level = Easy.new
      end

      if input == 2
        @level = Normal.new
      end
      
      if input == 3
        @level = Hard.new
      end
    end

    @mode.set_level(@level)
    @board.set_mode(@mode)

    @board.print_board
    @mode.loop_steps(@board)
    puts @board.get_the_winner
    puts "Game Finished"
  end

end

game = Tictactoe.new
game.start_game
