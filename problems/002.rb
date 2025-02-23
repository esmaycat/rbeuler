fib = lambda { |n, m = {}|
  return n if n < 2

  m[n] ||= f[n - 1, m] + f[n - 2, m]
}
puts (0..).lazy.filter_map do |n|
  r = fib[n]
  r if r.even?
end.take_while { |n| n < 4_000_000 }.to_a.sum
