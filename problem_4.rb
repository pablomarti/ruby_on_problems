# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit
# numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.

require 'benchmark'

def palindrome?(value)
  string = value.to_s
  total = string.length
  return false unless total % 2 == 0

  for i in 0..(total / 2)
    return false unless string[i] == string[total - 1 - i]
  end

  true
end

def search(number)
  result = 0
  processed = 0

  (1..number).reverse_each do |i|
    (1..number).reverse_each do |j|
      next if j >= processed

      tmp_result = i * j
      result = tmp_result if palindrome?(tmp_result) && tmp_result > result
    end

    processed = i
  end

  result
end


puts Benchmark.measure { puts search(999) }

