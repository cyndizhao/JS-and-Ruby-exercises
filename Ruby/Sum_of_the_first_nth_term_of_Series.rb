def series_sum(n)
  sum = 0
  (1..n).each {|i| sum += 1.to_f/(1 + (i-1)*3)}
  return '%.2f' % sum
end
