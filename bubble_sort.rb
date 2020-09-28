def bubble_sort(array)
  n = array.length
  until n <= 1
    newn = 0
    1.upto(n - 1) do |i|
      next unless array[i - 1] > array[i]

      aux = array[i]
      array[i] = array[i - 1]
      array[i - 1] = aux
      newn = i
    end
    n = newn
  end
  array
end

numbers = [4, 3, 78, 2, 0, 2]
puts "Numbers: #{numbers}"
puts "Sorted numbers: #{bubble_sort(numbers)}"
