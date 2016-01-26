cos_n_caps = {
  "USA" => "Washington, DC",
  "Canada" => "Ottawa",
  "United Kingdom" => "London",
  "France" => "Paris",
  "Germany" => "Berlin",
  "Egypt" => "Cairo",
  "Ghana" => "Accra",
  "Kenya" => "Nairobi",
  "Somalia" => "Mogadishu",
  "Sudan" => "Khartoum",
  "Tunisia" => "Tunis",
  "Japan" => "Tokyo",
  "China" => "Beijing",
  "Thailand" => "Bangkok",
  "India" => "New Delhi",
  "Philippines" => "Manila",
  "Australia" => "Canberra",
  "Kyrgyzstan" => "Bishkek"
}

right = 0

cos_n_caps.each do |country, capital|
  puts "What is the capital of #{country}?"
  response = gets.chomp()
  if response == capital
    puts "CORRECT!"
    right += 1
  else
    puts "It's #{capital}, duh."
  end
end

puts "You got a score of #{right}"
if right == cos_n_caps.count
  puts "You got a perfect score!"
else
  puts "Not a perfect score, try again!"
end


