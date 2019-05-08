# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

# Option 1
(1..999).to_a.filter{ |i| i%3 == 0 || i%5 == 0 }.sum

# Option 2
total = 0
for i in 1..999 do
  total += i if i%3 == 0 || i%5 == 0
end
