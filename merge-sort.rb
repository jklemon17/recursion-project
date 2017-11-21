def merge_sort(array)
  if array.length < 2
    array
  else
    merge_arrays(merge_sort(array[0..(array.length/2-1)]),merge_sort(array[(array.length/2)..-1]))
  end
end
def merge_arrays(array1,array2)
  merged_array = []
  until array1.length == 0 || array2.length == 0
    if array1[0] < array2[0]
      merged_array << array1[0]
      array1.delete_at(0)
    else
      merged_array << array2[0]
      array2.delete_at(0)
    end
  end
  array1.length == 0 ? array2.each {|i| merged_array << i} : array1.each {|i| merged_array << i}
  merged_array
end

my_array = [1,8,4,7,3,2,5,6,8,6,9,0,3,4,6,8,3,6,8,13,65,23,6,8,9,20,15]
print merge_sort(my_array), "\n"
