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
