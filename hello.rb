puts 'How old are you?'
puts 'Ohh! so you are ' << gets.strip << ' years old'

puts 'hello world!'

name = 'Odin'
puts "Hello, #{name}"

puts 'hello'.capitalize
puts 'hello'.include?('lo')
puts 'hello'.include?('z')

age = 15
puts age

age += 10
puts age

i = 0
until i >= 10
  puts "i is #{i}"
  i += 1
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
