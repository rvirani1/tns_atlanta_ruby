students = ["Bob", "Christie", "Albert", "John", "Rebecca"]
teachers = ["Riaz", "James"]

puts "What's your name?"
name = gets.chomp()
if students.include?(name)
  `say 'Keep studying, #{name}'`
elsif teachers.include?(name)
  `say 'Time to get to work, #{name}'`
else
  `say "Sorry don't know who you are"`
end
