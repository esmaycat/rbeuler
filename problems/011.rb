# Expect input on stdin
ns = $stdin.each_line.map { _1.chomp.split.map(&:to_i) }
puts((0..19).to_a.repeated_permutation(2).flat_map do |y, x|
  [
    x <= 16 && ns[y][x, 4],
    y <= 16 && ns[y, 4].map { _1[x] },
    x <= 16 && y <= 16 && ns[y, 4].each_index.map { ns[y + _1][x + _1] },
    x >= 4 && y <= 16 && ns[y, 4].each_index.map { ns[y + _1][x - _1] }
  ].filter_map { _1.reduce :* if _1 }
end.max)
