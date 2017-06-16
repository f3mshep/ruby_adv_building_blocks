def bubble_sort(arr)
  swapped = false


  while true
    idx = 0

    (arr.length - 1).times do
      next_el = idx + 1
      if arr[idx] > arr[next_el]
        arr[idx], arr[next_el] = arr[next_el], arr[idx]
        swapped = true
      end
      idx += 1
    end

    break if swapped == false
    swapped = false
  end
  arr
end
