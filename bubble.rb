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

bubble_sort_by(["hi","hello","hey"]) {|left,right| left.length - right.length}
