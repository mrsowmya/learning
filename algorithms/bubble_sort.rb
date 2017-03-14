#Algorithm is a set of rules or process to be followed in calculations or other problem solving operations
#Bubble sort
#Walk through the list and put two adjacent elements in descending order
#O(n) means that your algorithm will take on the order of n operations to insert an item

def bubble_sort(array)
  n = array.length

  #use when we donot know how many iterations we have to run
  loop do
    swapped = false

    (n-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
    end

    break unless swapped
  end

  array
end


array = [9,8,7,6,5,4]

puts bubble_sort(array)


#worst case when we have input array in descending order because we have to perform maximum number of swaps
#its pretty slow algorithm
