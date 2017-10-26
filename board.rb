require_relative "rules"
require_relative "easy"
require_relative "normal"
require_relative "hard"

class Board
  include Rules

  @board = []

  def initialize
    @board = (0..8).to_a
  end

  def status
    @board
  end

  def print_board
    Gem.win_platform? ? (system "cls") : (system "clear")
    puts get
  end

  def set(position, value)
    @board[position] = value
  end

  def choose_level
    puts "Choose the level of you game."
    puts "Enter: \n 1 - Easy \n 2 - Normal \n 3 - Hard \n"
  end

  private 
  def get
    board_content = ''
    (0..8).each do |index| 
      if index == 9
        board_content << " #{@board[index.to_i]} "
        break 
      end
      if (index.to_i % 3) == 0 && index.to_i > 0
        board_content <<  "\n===+===+===\n" 
      end
      board_content << " #{@board[index.to_i]} "
      board_content <<  '|'
    end
    board_content
  end

end