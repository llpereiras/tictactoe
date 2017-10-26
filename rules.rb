module Rules

  def get_game_over(b)
    [b[0], b[1], b[2]].uniq.length == 1 ||
    [b[3], b[4], b[5]].uniq.length == 1 ||
    [b[6], b[7], b[8]].uniq.length == 1 ||
    [b[0], b[3], b[6]].uniq.length == 1 ||
    [b[1], b[4], b[7]].uniq.length == 1 ||
    [b[2], b[5], b[8]].uniq.length == 1 ||
    [b[0], b[4], b[8]].uniq.length == 1 ||
    [b[2], b[4], b[6]].uniq.length == 1
  end

  def get_the_winner(b)
    column = get_the_colums_winner(b)
    return 'Draw Game' unless column
    return "You loose. Try again!" if column == 'X'
    return "Congratulation!!! You Win." if column == 'O'
  end

  private
  def get_the_colums_winner(b)
    return b[0] if [b[0], b[1], b[2]].uniq.length == 1 
    return b[3] if [b[3], b[4], b[5]].uniq.length == 1
    return b[6] if [b[6], b[7], b[8]].uniq.length == 1
    return b[0] if [b[0], b[3], b[6]].uniq.length == 1
    return b[1] if [b[1], b[4], b[7]].uniq.length == 1
    return b[2] if [b[2], b[5], b[8]].uniq.length == 1
    return b[0] if [b[0], b[4], b[8]].uniq.length == 1
    return b[2] if [b[2], b[4], b[6]].uniq.length == 1
  end


end