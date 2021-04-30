# def my_each(a)
#   yield(a)
# end

# my_each(6){|a| a.to_i + 5}
# my_each("Zeenat"){|a| "Hello " + a}
# rubocop:disable Style/For
module Enumerable
  def my_each
    for index in self
      yield index
    end
  end

  def my_each_with_index
    b = 0
    for a in self
      yield a, b
      b += 1
    end
  end

  def my_select
    array = []
    my_each do |i|
      array.push(i) if yield i
    end
    array
  end

  def my_all?
    if empty?
      true
    else
      if block_given?
        for index in self
          return false unless yield index
        end
      else
        for index in self
          return false unless index
        end
      end
    end
  end
  def my_all?
    return true if empty?

    my_each { |i| return false if yield i }
  end

  def my_map
    array = []
    for index in self
      array.push(yield index)
    end
    array
  end

  def my_none?
    if empty?
      true
    else
      if block_given?
        for index in self
          return true unless yield index
        end
      else
        for index in self
          return true unless index
        end
      end
    end
  end
end
# rubocop:enable Style/For
words = ["bacon", "orange", "apple"]
puts words.my_none? { |word| word.size >= 5 }
puts words.my_none? { |word| word.size == 5 }
puts words.my_none? { |word| word.size < 5 }
puts words.my_none? { |word| word.size > 5 }
