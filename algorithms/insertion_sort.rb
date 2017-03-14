#Insertion sort is Iterative version
#Also called as inplace algorithm

#array = [9,6,5,0,8,2,7,3]
def insertion_sort(array)
  for j in 1...array.length
    key = array[j]
    i   = j - 1

    while((i >= 0) && (array[i] > key))
      array[i + 1] = array[i]

      i = i - 1
    end

    array[i + 1] = key
  end

  array
end

array = [9,6,5,0,8,2,7,3]
puts insertion_sort(array)


#worst time taken is O(n2) -
#best case omega(n) - alreadet sorted list
#maximum vatiables required i, j and key
#space complexity is O(1) or constant time -
#inplace algo not taking any extra space to sort array
#time complexity depends on number of comparisions involved and
#number of movements involved
