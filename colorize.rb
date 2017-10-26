class Colorize

  def self.colorize(text, color = "default", bgColor = "default")
    colors = {"default" => "38","black" => "30","red" => "31","green" => "32","brown" => "33", "blue" => "34", "purple" => "35",
     "cyan" => "36", "gray" => "37", "dark gray" => "1;30", "light red" => "1;31", "light green" => "1;32", "yellow" => "1;33",
      "light blue" => "1;34", "light purple" => "1;35", "light cyan" => "1;36", "white" => "1;37"}
    color_code = colors[color]
    return "\033[#{color_code}m#{text}\033[0m"
  end

  def self.print(text)
    return colorize(text, "light blue") if text == "X"
    return colorize(text, "red") if text == "O"
    colorize(text, "white")
  end

end
