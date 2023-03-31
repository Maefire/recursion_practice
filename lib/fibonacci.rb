def fib(int)
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
p fib(8)
[0, 1, 1, 2, 3, 5, 8, 13]
