def fibs(int)
  return result if int.eql?(0)

  result = []
  a = 0
  result << a
  b = 1
  result << b

  (int - 2).times do
    c = a + b
    a = b
    b = c
    int -= 1
    result << c
  end
  result
end
p fibs(8)
# [0, 1, 1, 2, 3, 5, 8, 13]

# Ruby is crazy. The base case is an array, which eventually causes an array to be built, that
# will contain the numbers needed.
# results[-1] looks at the built array, selects the last position, and subtracts 1 from it
# results[-2] does the same for the second to last position.
# it then adds these numbers up, and puts them into results array.
# to print each number, I use a range from 0 to inclusive n
def fibs_rec(n)
  return [0] if n.eql?(0)
  return [0, 1] if n.eql?(1)

  results = fibs_rec(n - 1)
  results << results[-1] + results[-2]
  results[0...n]
end
p fibs_rec(8)
