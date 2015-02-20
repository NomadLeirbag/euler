# Euler Project Problem 2: Even Fibonacci numbers
# Each new term in the Fibonacci sequence is generated by adding the previous
# two terms. By starting with 1 and 2, the first 10 terms will be:
# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
# By considering the terms in the Fibonacci sequence whose values do not exceed
# four million, find the sum of the even-valued terms.

def fibonacci(start1, start2, limit)
  sequence = [start1, start2]
  sequence << sequence[-1] + sequence[-2] while sequence.last <= limit
  sequence[0...-1]
end

def sum_of_divisible_elements(array, divisor)
  array.inject(0) { |sum, n| sum + (n % divisor == 0 ? n : 0) }
end

def sum_of_divisible_fibonacci(start1, start2, limit, divisor)
  sum_of_divisible_elements(fibonacci(start1, start2, limit), divisor)
end

puts sum_of_divisible_fibonacci(1, 2, 90, 2) # first 10 terms
puts sum_of_divisible_fibonacci(1, 2, 4_000_000, 2) # actual problem
