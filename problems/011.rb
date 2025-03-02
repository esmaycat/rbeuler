# Expect input on stdin
ns = $stdin.each_line.map { _1.chomp.split.map(&:to_i) }
puts((0..19).to_a.repeated_permutation(2).flat_map do |y, x|
  [
    x <= 16 ? ns[y][x, 4] : nil,
    y <= 16 ? ns[y, 4].map { _1[x] } : nil,
    x <= 16 && y <= 16 ? ns[y, 4].each_index.map { ns[y + _1][x + _1] } : nil,
    x >= 4 && y <= 16 ? ns[y, 4].each_index.map { ns[y + _1][x - _1] } : nil
  ].compact.map { _1.reduce :* }
end.max)
