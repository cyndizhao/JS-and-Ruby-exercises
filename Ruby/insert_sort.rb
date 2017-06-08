# Insertion sort works by starting at the beginning of the array then looping
# through the remaining inserting each new one in it's proper place in the sorted
#  portion of the array.
def insert_sort(arr)
  0.upto(arr.length - 1) do |i|
    0.upto(i - 1) do |j|
      if arr[j] > arr[i]
        arr[j], arr[i] = arr[i], arr[j]
      end
    end
  end
  return arr
end

# p insert_sort([42,31,15,7,30])
p insert_sort([])
