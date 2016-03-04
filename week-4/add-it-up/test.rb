def total(num_array)
  sum = 0
  num_array.each {|a| sum += a}
  p sum
end

total([1,2,3,4])