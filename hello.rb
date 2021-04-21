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

bubble_sort ([2,5,3,1,4])
#using while
def bubble_sort (array)
  not_sorted = true
  while not_sorted
    i = 0
    not_sorted = false
    while i < array.length - 1
      if array[i] > array [i + 1]
        store = array[i]
        array[i] = array[i + 1]
        array[i + 1] = store
        not_sorted = true
      end
      i += 1
    end
  end
  return array
end

#using until
def bubble_sort (array)
  not_sorted = true
  while not_sorted
    i = 0
    not_sorted = false
    until i >= array.length - 1
      if array[i] > array [i + 1]
        store = array[i]
        array[i] = array[i + 1]
        array[i + 1] = store
        not_sorted = true
      end
      i += 1
    end
  end
  return array
end

def bubble_sort_by (array)
  not_sorted = true
  while not_sorted
    i = 0
    not_sorted = false
    while i < array.length - 1
      if (yield array[i], array [i + 1]) >= 0
        store = array[i]
        array[i] = array[i + 1]
        array[i + 1] = store
        not_sorted = true
      end
      i += 1
    end
  end
  return array
end

bubble_sort_by(["hi","hello","hey"]) do |left,right|
  left.length - right.length
end
