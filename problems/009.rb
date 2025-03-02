puts((1..500).lazy.flat_map do |a|
  (a..500).lazy.map do |b|
    c = 1000 - a - b
    [a, b, c] if (a**2) + (b**2) == c**2
  end
end.find(&:itself).reduce(:*))
