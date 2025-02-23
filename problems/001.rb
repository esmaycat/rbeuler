puts (1..999).select { |n| (n % 5).zero? || (n % 3).zero? }.sum
