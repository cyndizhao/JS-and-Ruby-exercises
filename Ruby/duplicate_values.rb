# How do I detect duplicate values within an array in Ruby? (Estimate the Big O for your algorithm
def duplicate_value(arr)
  hash = {}
  result = []
  arr.each do |x|
    if hash.has_key? x
      hash[x] += 1
    else
      hash[x] = 1
    end
  end
  hash.each do |key, value|
    if value > 1
      result.push(key)
    end
  end
  return result
end

# p duplicate_value(['a', 'b', 'a', 'a', 1, 1, 3])
p duplicate_value([])
