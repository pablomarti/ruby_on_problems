require 'benchmark'

def difference(n)
  sum_of_quares = 0
  sum_of_numbers = 0
  for i in 1..n
    sum_of_quares += i**2
    sum_of_numbers += i
  end

  square_of_sums = sum_of_numbers ** 2

  square_of_sums - sum_of_quares
end


puts Benchmark.measure { puts difference(100) }

