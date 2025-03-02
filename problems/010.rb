N = 2_000_000
sieve = [true] * (N + 1)
sieve[0] = sieve[1] = false

(2..N**0.5).each do |n|
  next unless sieve[n]

  (n * n).step(N, n) { sieve[_1] = false }
end

puts sieve.each_index.select { sieve[_1] }.sum
