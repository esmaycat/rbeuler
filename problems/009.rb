(1..).lazy.each do |a|
  r = a.downto(0).filter do |b|
    c = ((a**2) + (b**2))**0.5
    [b, c] if (c % 1).zero?
  end
  p [a, r.to_a]
end
