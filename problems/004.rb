puts((100..999).to_a.repeated_combination(2).filter_map do |x, y|
  prod = x * y
  prod if prod.to_s == prod.to_s.reverse
end.max)
