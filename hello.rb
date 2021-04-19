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
until i >= 10 do
 puts "i is #{i}"
 i += 1
end

if 1 < 2
  puts "Hot diggity, 1 is less than 2!"
end

name = "zee"
if name == "ze" 
  puts "try again"
elsif name == "zeenat"
  puts "once more"
else
  puts "correct"
end

arr = [1, 3, 5, 7, 9, 11]
number = 3
if arr.include?(number)
  puts "#{number} is in the array"
else
  puts "#{number} is not in the array"
end

arr.each_with_index do |val, idx| 
  puts "#{idx}- #{val}"
end