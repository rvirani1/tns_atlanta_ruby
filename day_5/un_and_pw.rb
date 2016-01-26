uns_and_pws = {
  "argroch" => "12345",
  "jpanaia" => "password"
}

puts "Please Sign In"
puts "-----------------"
print "Username: "
un = gets.chomp()
print "Password: "
password = gets.chomp()

if !uns_and_pws.keys.include?(un)
  puts "Not a current username"
elsif uns_and_pws[un] != password
  puts "Access Denied"
else
  puts "Welcome Back, #{un}!"
end
