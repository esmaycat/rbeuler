prime_factors = lambda { |n|
  return {} if n == 1

  factors = Hash.new 0
  while n.even?
    factors[2] += 1
    n /= 2
  end

  (3..(n**0.5).to_i).step(2) do |i|
    while (n % i).zero?
      factors[i] += 1
      n /= i
    end
  end

  factors[n] += 1 if n > 2
  factors
}

factors = Hash.new 0
(2..20).each do |n|
  prime_factors[n].each_pair do |k, v|
    difference = v - factors.fetch(k, 0)
    factors[k] += difference if difference.positive?
  end
end

puts factors.reduce(1) { |n, (k, v)| n * (k**v) }
