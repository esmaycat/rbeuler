divisor_count = lambda { |n|
  (1..n**0.5).filter_map do |a|
    b, r = n.divmod a
    (a == b ? 1 : 2) if r.zero?
  end.sum
}

puts (1..).lazy.filter_map { |n|
  # The divisor function, D, is multiplicative for coprime numbers.
  # Thus, we split the triangle number n * (n + 1) / 2 into two
  # coprime factors: n / 2, n + 1 for even n and n, (n + 1) / 2
  # for odd n.
  if n.even?
    d1 = divisor_count[n / 2]
    d2 = divisor_count[n + 1]
  else
    d1 = divisor_count[n]
    d2 = divisor_count[(n + 1) / 2]
  end

  triangle = n * (n + 1) / 2
  triangle if d1 * d2 > 500
}.take(1).first
