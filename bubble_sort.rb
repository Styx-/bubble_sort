def swap_consecutive(index, array)
  placeholder = array[index]
  array[index] = array[index - 1]
  array[index - 1] = placeholder
  array
end

def bubble_sort(array)
  array_to_sort = array
  sorted = false
  swapped_this_round = false
  index = 1
  size = array_to_sort.size
  until sorted
    index = 1 if index > size - 1
    swapped_this_round = false if index == 1

    if array_to_sort[index - 1] > array_to_sort[index]
      array_to_sort = swap_consecutive(index, array_to_sort)
      swapped_this_round = true
    end

    sorted = true if (swapped_this_round == false) && (index == size - 1)
    index += 1
  end
  array_to_sort
end

puts bubble_sort([4,3,78,2,0,2]).inspect
