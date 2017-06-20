def find_outlier(integers)
  a = integers[0] % 2 + integers[1] % 2 + integers[2] % 2
  a > 1 ? target = 0 : target = 1
  integers.each {|i| return i if i % 2 == target}
end
