module ValidInput

  def check_valid_input
    spot = STDIN.gets.chomp
    if valid_input?(spot)
      return spot.to_i
    end
    puts "Inválid input. Enter numbers between 0 and 8."
    spot.to_i
  end

  private
  def valid_input?(input)
    /^\d{1}$/ === input
  end

end