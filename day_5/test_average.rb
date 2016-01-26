scores = [87, 86, 70, 78, 92, 91, 29, 88, 82, 99]

# Display in Ascending Order
puts "The test scores were:"
puts scores.sort.join(', ')

# Calculate Average
total = 0.0
scores.each { |score| total += score.to_f }
average = total / scores.count
puts "The average for this test was: #{average.round(1)}"
