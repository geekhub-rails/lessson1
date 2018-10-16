class MyArray
  attr_accessor :array

  def initialize(arr = [])
    @array = arr
  end

  def size
    # @array.size
    size = 0
    @array.each { size += 1 }
    size
  end

  def reverse
    # @array.reverse
    reverse_arr = []
    @array.each { |n| reverse_arr.unshift(n) }
    reverse_arr
  end

  def max
    # @array.max
    max_value = nil
    @array.each do |n|
      if max_value.nil?
        max_value = n
      elsif max_value < n
        max_value = n
      end
    end
    max_value
  end

  def min
    # @array.min
    min_value = nil
    @array.each do |n|
      if min_value.nil?
        min_value = n
      elsif min_value > n
        min_value = n
      end
    end
    min_value
  end

  def desc
    @array.sort { |a, b| b <=> a }
  end

  def asc
    @array.sort
  end

  def odd
    odd_arr = []
    @array.each do |n|
      odd_arr.push(n) if n.odd?
    end
    odd_arr
  end

  def multiple_to_three
    multiple_to_three_arr = []
    @array.each do |n|
      multiple_to_three_arr.push(n) if (n % 3).zero?
    end
    multiple_to_three_arr
  end

  def uniq
    @array.uniq
  end

  def devide_on_ten
    devide_on_ten_arr = @array.map { |n| n.to_f / 10 }
    devide_on_ten_arr
  end

  def chars
    chars_arr = ('a'..'z').map(&:to_s)
    result = []
    @array.each { |n| result.push(chars_arr[n - 1].to_sym) }
    result
  end

  def switch
    a = @array
    min_index = a.index(a.min)
    max_index = a.index(a.max)
    min = a.min
    max = a.max
    a[min_index] = max
    a[max_index] = min
    a
  end

  def before_min
    min_index = @array.index(@array.min)
    @array[0...min_index]
  end

  def three_smallest
    @array.min(3)
  end
end
