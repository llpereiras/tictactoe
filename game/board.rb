class Board
  include Rules

  attr_reader :player_one, :player_two, :mode

  @board = []

  def initialize
    @board = (0..8).to_a
  end

  def status
    @board
  end

  def set_player_one(player_one)
    @player_one = player_one
  end

  def set_player_two(player_two)
    @player_two = player_two
  end

  def set_mode(mode)
    @mode = mode
  end

  def print_board
    puts get
  end

  def clear_board
    Gem.win_platform? ? (system "cls") : (system "clear")
  end

  def set(position, value)
    @board[position] = value
  end

  def choose_level
    puts "Choose the level of you game."
    puts "Enter: \n 1 - Easy \n 2 - Normal \n 3 - Hard \n"
  end

  def choose_mode
    puts "Choose the mode of you game."
    puts "Enter: \n 1 - Player X Cpu \n 2 - Player X Player \n 3 - Cpu X Cpu \n"
  end

  def get_available_spaces
    available_spaces = []
    status.each {|s| available_spaces << s if s != "X" && s != "O" }
    available_spaces
  end

  private 
  def get
    board_content = ''
    (0..8).each do |index| 
      if index == 9
        board_content << " #{Colorize.print(@board[index.to_i])} "
        break 
      end
      if (index.to_i % 3) == 0 && index.to_i > 0
        board_content <<  "\n===+===+===\n" 
      end
      board_content << " #{Colorize.print(@board[index.to_i])} "
      board_content <<  '|'
    end
    board_content
  end

end