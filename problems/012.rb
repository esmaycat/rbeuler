divisor_count = lambda { |n|
  factors = 1
  while n.even?
    n /= 2
    factors += 1
  end

  3.step((n**0.5).to_i, 2) do |divisor|
    exponent = 1
    while (n % divisor).zero?
      n /= divisor
      exponent += 1
    end
    factors *= exponent
  end
  factors *= 2 if n > 2
  factors
}

puts (1..).lazy.filter_map { |n|
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
