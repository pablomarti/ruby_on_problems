# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

require 'benchmark'

def smallest_multiple(number)
  values = []
  (1..number).reverse_each do |i|
    found = false
    values.each do |value|
      if value % i == 0
        found = true
        break
      end
    end

    values << i unless found
  end

  result = number

  while true
    invalid = false

    values.each do |value|
      if result % value > 0
        invalid = true
        result += 1
        break
      end
    end

    break unless invalid
  end

  result
end


puts Benchmark.measure { puts smallest_multiple(20) }
