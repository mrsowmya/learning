#a is the array and key is the value to find
def binary_search(a, key)
  left  = 0
  right = a.length - 1

  while(left <= right)
    mid = left+((right-left)/2)

    if a[mid] == key
      return mid
    elsif a[mid] < key
      left = mid+1
    else
      right = mid-1
    end
  end
end


puts binary_search([0, 2, 3, 4, 10, 40, 44], 10)
