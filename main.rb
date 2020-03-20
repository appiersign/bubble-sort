

def bubble_sort(array)
  n = array.length - 1

  loop do
    if_swap = true
    0.upto(n) do |x|
      if_swap = false
      if array[x] > array[x + 1]
        array[x], array[x + 1] = array[x + 1], array[x]
        if_swap = true
      end
    end
    break unless if_swap
  end
end

arr = [4,3,78,2,0,2]
print bubble_sort(arr)