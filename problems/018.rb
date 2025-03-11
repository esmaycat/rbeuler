# Expect input on stdin
triangle = $stdin.each_line.map { _1.chomp.split.map(&:to_i) }
(triangle.length - 2).downto(0) do |n|
  below = triangle[n + 1]
  triangle[n].each_index do |node|
    triangle[n][node] += [below[node], below[node + 1]].max
  end
end
puts(triangle[0][0])
