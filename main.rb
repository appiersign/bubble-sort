def bubble_sort(array)
  n = array.length - 1

  n.times do
    0.upto(n) do |x|
      a = array[x]
      b = array[x + 1]
      if b.nil? == false && b < a
        array[x] = b
        array[x + 1] = a
      end
    end
  end
  array
end

arr = [4, 3, 78, 2, 0, 2]
# print bubble_sort(arr)

def bubble_sort_by(array)
  yield
end

string_array = ["hi", "hey", "hello"]
yield_block = string_array.each do |a, b| a <=> b end

bubble_sort_by($yield_block)