# Write a method, reverse_map, which invokes a block on each of the elements in reverse order,
# and returns an array of their results.
#
# reverse_map(1, 2, 3) { |i| i * 2 }      # => [6, 4, 2]
# reverse_map(1, 2, 3) { |i| i * 2 }      # => [6, 4, 2]

def reverse_map *array
  result = (array.length-1).step(0, -1).map{ |i| yield array[i]}
  p result
end
reverse_map(1, 2, 3) { |i| i * 2 }      # => [6, 4, 2]
