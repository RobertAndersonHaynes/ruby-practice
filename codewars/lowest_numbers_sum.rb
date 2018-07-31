# Create a function that returns the sum of the two lowest positive numbers given an array of minimum 4 integers. No floats or empty arrays will be passed.

def sum_two_smallest_numbers(numbers)
  numbers.sort[0] + numbers.sort[1]
end

# best practice

def sum_two_smallest_numbers(numbers)
  numbers.min(2).reduce(:+)
end
