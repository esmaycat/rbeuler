prime = lambda { |n|
  return n != 1 if n < 4
  return false if (n % 3).zero? || n.even?

  5.step(n**0.5, 6).map { |i| (n % i).zero? || (n % (i + 2)).zero? }.none?
}

puts (1..).lazy.filter(&prime).drop(10_000).first
