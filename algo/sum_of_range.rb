# Complete the method called sum_of_range, which will accept an array containing
# two numbers, and return the sum of all of the whole numbers within the range of those
# numbers, inclusive.

def sum_of_range(array)
  first = array.first
  last = array.last
  if first < last
    numbers = (first..last).to_a
  else
    numbers = (last..first).to_a
  end
  index = 0
  numbers.each do |number|
    index += number
  end
  result = index
end

# Driver code - don't touch anything below this line.
puts "TESTING sum_of_range..."
puts

result = sum_of_range([1, 4])

puts "Your method returned:"
puts result
puts

if result == 10
  puts "PASS!"
else
  puts "F"
end

result = sum_of_range([4, 1])

puts "Your method returned:"
puts result
puts

if result == 10
  puts "PASS!"
else
  puts "F"
end
