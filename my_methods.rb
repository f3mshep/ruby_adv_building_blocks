module Enumerable

  def my_each
    counter = 0
    while counter < self.size
      yield self[counter]
      counter += 1
    end
  end

  def my_each_with_index
    counter = 0
    while counter < self.size
      yield self[counter], counter
      counter += 1
    end
  end

  def my_select
    counter = 0
    res = []
    while counter < self.size
      if yield self[counter]
        res << self[counter]
      end
      counter += 1
    end
    res
  end

  def my_all?
    counter = 0
    while counter < self.size
      if !yield self[counter]
      return false
      end
      counter += 1
    end
    true
  end

  def my_none?
    counter = 0
    while counter < self.size
      if yield self[counter]
        return false
      end
    counter += 1
    end
    true
  end

  def my_count
    counter = 0
    hits = 0

    while counter < self.size
      if yield self[counter]
        hits += 1
      end
      counter += 1
    end

    return hits
  end

  def my_map()
    res = []
    counter = 0

    while counter < self.size
      temp = yield self[counter]
      res << temp
      counter += 1
    end

    res
  end

  def my_inject(n = nil)
    if n == nil
      n = 1
    end
    self.my_each do |el|
      n = yield(n, element)
    end
    n
  end

end

def multiply_els(arr)
  arr.my_inject{|result, num | result * num}
end
