require_relative "board"

class Tictactoe
  def initialize
    @board = Board.new()
    @com = "X" # the computer's marker
    @hum = "O" # the user's marker
    @board.set_player_one(@hum)
    @board.set_player_two(@com)
    @level = nil
  end

  def start_game

    @board.choose_level
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

    # start by printing the board
    @board.print_board
    puts "Enter [0-8]:"
    # loop through until the game was won or tied
    until game_is_over(@board.status) || tie(@board.status)
      get_human_spot
      if !game_is_over(@board.status) && !tie(@board.status)
        eval_board
      end
      @board.print_board
    end
    puts @board.get_the_winner(@board.status)
    puts "Game Finished"
  end

  def get_human_spot
    spot = nil
    until spot
      spot = check_valid_input
      if @board.status[spot] != "X" && @board.status[spot] != "O"
        @board.set(spot, @hum)
      else
        spot = nil
      end
    end
  end

  def eval_board
    spot = nil
    until spot
      if @board.status[4] == "4"
        spot = 4
        @board.set(spot, @com)
      else
        spot = @level.get_best_move(@board, @com)
        if @board.status[spot] != "X" && @board.status[spot] != "O"
          @board.set(spot, @com)
        else
          spot = nil
        end
      end
    end
  end

  def game_is_over(b)
    @board.get_game_over(b)
  end

  def tie(b)
    b.all? { |s| s == "X" || s == "O" }
  end

  def check_valid_input
    # spot = gets.chomp
    spot = STDIN.gets.chomp
    if valid_input?(spot)
      return spot.to_i
    end
    puts "Inválid input. Enter numbers between 0 and 8."
    spot.to_i
  end

  def valid_input?(input)
    /^\d{1}$/ === input
  end

end

game = Tictactoe.new
game.start_game
