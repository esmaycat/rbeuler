# Expect input on stdin
n = $stdin.each_line.flat_map { _1.chomp.chars.map(&:to_i) }
puts n.each_cons(13).map { _1.reduce :* }.max
