# Selection sort works by starting at the beginning of the array and then build
# a sorted portion of the array then looping over the remaining elements (unsorted)
# of the array to find the minimum value then swapping that minimum value

def selection_sort(arr)
  0.upto(arr.length-1) do |i|
    min_index = i
    (i + 1).upto(arr.length-1) do |j|
      min_index = j if arr[j] < arr[min_index]
    end
    arr[i], arr[min_index] = arr[min_index], arr[i]
  end
  return arr
end

p selection_sort([42, 3, 15, 7, 30])
