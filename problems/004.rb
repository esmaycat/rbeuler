puts(100.upto(999).filter_map do |n|
  100.upto(999).filter_map do |m|
    prod = (m * n).to_s
    m * n if prod == prod.reverse
  end.max
end.to_a.max)
