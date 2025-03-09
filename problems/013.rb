# Expect input on stdin
puts $<.each_line.map(&:to_i).sum.to_s[0, 10]
