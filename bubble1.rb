# frozen_string_literal: true

def bubble_sort(arr)
  j = arr.length - 1
  while j.positive?
    (0...j).each do |i|
      arr[i], arr[i + 1] = arr[i + 1], arr[i] if arr[i] > arr[i + 1]
    end
    j -= 1
  end
  print arr
end

def bubble_sort_by(arr)
  n = arr.length - 1
  n.times do
    arr.each_with_index do |item, index|
      next_item = arr[index + 1]
      next if index == n

      col = yield(item, next_item)
      if col.positive?
        arr[index] = next_item
        arr[index + 1] = item
      end
    end
  end
  print arr
end

bubble_sort([4, 3, 78, 2, 0, 2])

bubble_sort_by(%w[hi hello hey]) do |left, right|
  left.length - right.length
end
