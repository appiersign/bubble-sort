def bubble_sort(array)
  n = array.length - 1

  n.times do
    0.upto(n) do |x|
      a = array[x]
      b = array[x + 1]
      array[x] = b, array[x + 1] = a if b.nil? == false && b < a
    end
  end
  array
end

arr = [4, 3, 78, 2, 0, 2]
print bubblegit_sort(arr)