def returning(value)
  yield(value)
  value
end

def merge_sort(array)
  return array if array.length <= 1
  half = array.length/2
  left = merge_sort(array[0...half])
  right = merge_sort(array[half..array.length-1])
  
  returning result_array = [] do
    while left.length > 0 and right.length > 0
      result_array << left.shift if left[0]<right[0]
      result_array << right.shift if right[0]<left[0]
    end
    if left.length > 0
      result_array.concat(left)
    else
      result_array.concat(right)
    end
  end
end

test_array = [5,4,3,2,1]
puts merge_sort(test_array)