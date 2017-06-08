# Bubble sort works by swapping element in an array until you reach end and
# then doing it again and again until reaching a point when the array is sorted.
def bubble_sort(arr)
  loop do
    sorted = true
    0.upto(arr.length-2) do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        sorted = false
      end
    end
    break if sorted
  end
  return arr
end

p bubble_sort([3,6,31,62,46,7,13,21])
