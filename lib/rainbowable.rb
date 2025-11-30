module Rainbowable
  def rainbow
    to_s.chars.map.with_index do |char, i|
      color_index = i % 6 + 1
      "\e[3#{color_index}m#{char}"
    end.join + "\e[0m"
  end
end
