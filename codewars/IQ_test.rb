# Bob is preparing to pass IQ test. The most frequent task in this test is to find out which one of the given numbers differs from the others. Bob observed that one number usually differs from the others in evenness. Help Bob — to check his answers, he needs a program that among the given numbers finds one that is different in evenness, and return a position of this number.
#
# ! Keep in mind that your task is to help Bob solve a real IQ test, which means indexes of the elements start from 1 (not 0)

def iq_test(numbers)
  num_array = numbers.split(/ /)
  positive_test_1 = num_array[0].to_i % 2 == 0 && num_array[1].to_i % 2 == 0
  positive_test_2 = num_array[0].to_i % 2 == 0 && num_array[2].to_i % 2 == 0
  negative_test_1 = num_array[0].to_i % 2 != 0 && num_array[1].to_i % 2 != 0
  negative_test_2 = num_array[0].to_i % 2 != 0 && num_array[2].to_i % 2 != 0
  if positive_test_1 || positive_test_2
    num_array.each do |num|
      if num.to_i % 2 != 0
        return num_array.index(num) + 1
      end
    end
  elsif negative_test_1 || negative_test_2
    num_array.each do |num|
      if num.to_i % 2 == 0
        return num_array.index(num) + 1
      end
    end
  else
    return 1
  end
end

# best practice

def iq_test(numbers)
  nums = numbers.split.map(&:to_i).map(&:even?)
  nums.count(true) > 1 ? nums.index(false) + 1 : nums.index(true) + 1
end
