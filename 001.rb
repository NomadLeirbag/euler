# Euler Project Problem 1: Multiples of 3 and 5
# If we list all the natural numbers below 10 that are multiples of 3 or 5,
# we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

# generates an array containing all numbers within the range provided
# that are divisible by at least one of the factors provided.
def multiples(range, factors)
  divisible = []
  range.each do |n|
    factors.each do |f|
      divisible << n if divisible.last != n && n % f == 0
    end
  end
  divisible
end

# gives the sum of all numbers within a range that are divisible
# by at least one of the factors provided
def sum_of_multiples(range, factors)
  multiples(range, factors).inject { |sum, n| sum + n }
end

puts sum_of_multiples 1...10, [3, 5] # test case
puts sum_of_multiples 1...1000, [3, 5] # actual problem
