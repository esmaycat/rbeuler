ones = [0, 3, 3, 5, 4, 4, 3, 5, 5, 4]
tens = [0, nil, 6, 6, 5, 5, 5, 7, 6, 6]
teens = [3, 6, 6, 8, 8, 7, 7, 9, 8, 8]

puts((1..1000).map do |n|
  o = n % 10
  t = n / 10 % 10
  h = n / 100

  next 11 if h == 10

  (t == 1 ? teens[o] : tens[t] + ones[o]) + ((((o + t <=> 0) * 3) + 7 + ones[h]) * (h <=> 0))
end.sum)
