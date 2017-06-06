# Given an array of n integers, find out if there is an integer that occurs in the array more than n/2 times. Estimate the Big O of your algorithm
def more_than_half(arr)
  sorted_arr = arr.sort
  count = 0
  majority = sorted_arr[sorted_arr.length/2]
  sorted_arr.each do |x|
    majority == x ? count += 1 : count -= 1
  end
  return count > 0 ? majority : "None"
end

p more_than_half([1,2,3,4,5,5,5,5,5])
# p more_than_half([1,2])
# p more_than_half([])
