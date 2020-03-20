def bubble_sort(array)
  n = array.length - 1

  n.times do
    0.upto(n) do |x|
      array[x], array[x + 1] = array[x + 1], array[x] if array[x + 1].nil? == false && array[x] > array[x + 1]
    end
  end
  array
end

print bubble_sort([4, 3, 78, 2, 0, 2])
puts

def bubble_sort_by(array)
  n = array.length - 1
  n.times do
    0.upto(n) do |x|
      array[x], array[x + 1] = array[x + 1], array[x] if array[x + 1].nil? == false && yield(array[x], array[x + 1]) == 1
    end
  end
  print array
end

bubble_sort_by %w[hey hi hello] do |x, y|
  x.length <=> y.length
end

