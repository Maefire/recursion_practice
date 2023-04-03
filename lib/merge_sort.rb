# This method takes one argument to see how many random numbers you want in a single array
# random_array(20) would return an array of 20 random integer elements in an array.
# Simple RNG. For a larger range of numbers, Change value in rand().
def random_array(num)
  num.times.map { rand(10) }
end

def merger(array)
  return array if array.length.eql?(1)

  # sort array into halves
  arr_halved = array.length / 2
  # use halved array to set left and right halves
  left = merger(array[0...arr_halved])
  right = merger(array[arr_halved..])

  results = []
  # this will check the first value of left, check if it is <= right
  # if so, left.shift the element into the results array. If not, right.shift instead
  until left.empty? || right.empty?
    # puts shows how it does the sorting, nothing more
    # puts "Left:#{left}, Right:#{right}"
    results << ((left[0] <= right[0]) ? left.shift : right.shift)
    # puts "Results:#{results}"
  end

  results + left + right
end
p merger(random_array(4))
