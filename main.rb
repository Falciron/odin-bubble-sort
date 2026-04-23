def bubble_sort(number_array)
  loop do
    swap_occurred = false

    number_array.each_with_index do |number,index|
      if (index < number_array.size - 1) && (number > number_array[index + 1])
        number_array[index] = number_array[index + 1]
        number_array[index + 1] = number
        swap_occurred = true
      end
    end

    break if !swap_occurred
  end

  number_array
end

p bubble_sort([4,3,78,2,0,2])
# [0, 2, 2, 3, 4, 78]