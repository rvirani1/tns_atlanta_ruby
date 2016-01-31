def lbs_to_kg(lbs)
	lbs * 0.45
end

puts "How many pounds do you wish to convert to kgs?"
user_input = gets.chomp.to_f
puts lbs_to_kg(user_input)