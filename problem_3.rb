# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143?

require 'benchmark'

def factors(value)
  mid_number = Math.sqrt(value)
  return [value] if mid_number < 2

  factors = []
  for i in 1..(mid_number.to_i)
    factors << i if value % i == 0 && factors(i).count == 1
  end

  factors
end

factors(600851475143).max

puts Benchmark.measure { puts factors(600851475143).max }
