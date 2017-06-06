# Given an array: find all the pairs that add up to 10
def sum_of_ten(arr)
  sorted_array = arr.sort
  i = 0
  j = arr.length - 1
  result = [];
  while (i < j)
    sum = sorted_array[i] + sorted_array[j]
    if sum == 10
      result.push([sorted_array[i], sorted_array[j]])
      i += 1
      j -= 1
    elsif sum < 10
      i += 1
    else
      j -= 1
    end
  end
  return result
end

p sum_of_ten([1,4,6,8,3,11,-1,3,-4,14])
