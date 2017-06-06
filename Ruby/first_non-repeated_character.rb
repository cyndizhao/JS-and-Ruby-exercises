# How to find the first non-repeated character in a string. Estimate the Big O Notation for it.
def duplicate(array)
  hash = {}
  array.each do |x|
    if hash.has_key? x
      hash[x] += 1
    else
      hash[x] = 1
    end
  end
  hash.each do |key, value|
    if value == 1
      return key
    end
  end
  return "None"
end

# array = ['a', 'bf', 'fs', '123', 'bf', 'a', 't', '123']
# array = []
# array = ['a', 'b', 'b', 'a']
