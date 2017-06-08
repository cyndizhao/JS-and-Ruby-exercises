# Merge sort is a sorting technique based on divide and conquer technique.
# With worst-case time complexity being Ο(n log n), it is one of the most
# respected algorithms. Merge sort first divides the array into equal halves and
#  then combines them in a sorted manner.

def merge_two_sorted_arrays(arr1, arr2)
  result = []
  while arr1.length > 0 && arr2.length > 0
    if arr1[0] < arr2[0]
      result.push(arr1.shift)
    elsif arr1[0] > arr2[0]
      result.push(arr2.shift)
    else
      result.push(arr1.shift)
      result.push(arr2.shift)
    end
  end
  return result.concat(arr1).concat(arr2)
end

# p merge_two_sorted_arrays([1,4,6,7,34], [2,3,7,35])

def merge_sort(arr)
  return arr if arr.length <= 1
  mid = arr.length / 2
  arr_a = merge_sort(arr.slice(0, mid))
  arr_b = merge_sort(arr.slice(mid, arr.length - mid))
  return merge_two_sorted_arrays(arr_a, arr_b)
end

p merge_sort([1,5, 8,55, 77, 3,4,2 ,31, 64,38])
