puts "How old are you?"
puts "Ohh! so you are " << gets.strip << " years old"

puts 'hello world!'

name = "Odin"
puts "Hello, #{name}"

puts "hello".capitalize
puts "hello".include?("lo")
puts "hello".include?("z")

age = 15
puts age

age += 10
puts age

i = 0
loop do
  puts "i is #{i}"
  i += 1
  break if i == 10
end