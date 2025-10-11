def to_hex(r, g, b)
  [r, g, b].sum("#") { |c| c.to_s(16).rjust(2, '0') }
end

def to_ints(rgb)
  r = rgb[1..2]
  g = rgb[3..4]
  b = rgb[5..6]
  [r, g, b].map(&:hex)
end 