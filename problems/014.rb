collatz = lambda { |n|
  @memo ||= { 1 => 1 }
  return @memo[n] if @memo.key? n

  chain = collatz[n.even? ? n / 2 : (3 * n) + 1]
  @memo[n] = chain + 1
}

puts (1..1_000_000).max_by(&collatz)
