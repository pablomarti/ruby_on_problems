# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

# What is the 10 001st prime number?

require 'benchmark'

def prime_number(n)
  primes = [2]
  i = 3

  while true
    found = false

    primes.each do |prime|
      if i % prime == 0
        found = true
        break
      end
    end

    primes << i unless found
    i += 1

    break if primes.count == n
  end

  primes.last
end


puts Benchmark.measure { puts prime_number(10001) }

