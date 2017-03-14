#Merge Sort
#A technique called “divide and conquer” takes the original problem and produces solutions for smaller pieces of it,
#which are together in order to create the final solution
#merge sort better compare to insertion and quick sort

#Mergesort(A)
# 1. return A  if n = 1
# 2. left = left half of A
# 3. right = right half of A
# 4. sorted_left = Mergesort(left)
# 5. sorted_right = Mergesort(right)
# 6. return merge(sorted_left, sorted_right)

def mergesort(array)
  def merge(left_sorted, right_sorted)
    res = []
    l = 0
    r = 0

    loop do
      break if r >= right_sorted.length and l >= left_sorted.length

      if r >= right_sorted.length or (l < left_sorted.length and left_sorted[l] < right_sorted[r])
        res << left_sorted[l]
        l += 1
      else
        res << right_sorted[r]
        r += 1
      end
    end

    return res
  end

  def mergesort_iter(array_sliced)
    return array_sliced if array_sliced.length <= 1

    mid = array_sliced.length/2 - 1
    left_sorted = mergesort_iter(array_sliced[0..mid])
    right_sorted = mergesort_iter(array_sliced[mid+1..-1])
    return merge(left_sorted, right_sorted)
  end

  mergesort_iter(array)
end


puts mergesort([8,6,9,7,3,7])

#merge sort is better than bubble sort
#O(n log_2{n})
#space complexity is O(n)
#time complexity is O(n)
