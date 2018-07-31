# You get an array of numbers, return the sum of all of the positives ones. Note: if there is nothing to sum, the sum is default to 0.

def positive_sum(arr)
  sum = 0
  new_arr = []
  arr.each do |a|
    if a > 0
      new_arr << a
    end
  end
  new_arr.inject(0){|sum,x| sum + x }
end

# best practice

def positive_sum(arr)
  arr.select{|x| x > 0}.reduce(0, :+)
end
