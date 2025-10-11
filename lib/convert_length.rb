CONVERT_TABLE = {m: 1.0, ft: 3.28, in: 39.37}

def convert_length(length, from: :m, to: :m)
  convert_length = length / CONVERT_TABLE[from] * CONVERT_TABLE[to]
  convert_length.round(2)
end