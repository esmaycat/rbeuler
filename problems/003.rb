prime = lambda { |n|
  return n != 1 if n < 4
  return false if (n % 3).zero? || n.even?

  5.step(n**0.5, 6).all? { |i| (n % i) != 0 && (n % (i + 2)) != 0 }
}

N = 600_851_475_143

prime_factors = []
(1..N**0.5).each do |a|
  b, r = N.divmod a
  next unless r.zero?

  prime_factors << a if prime[a]
  prime_factors << b if prime[b]
end

puts prime_factors.max
