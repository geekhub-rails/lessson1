class MyArray
  attr_accessor :array

  def initialize(arr = [])
    @array = arr
  end

  def size
    @array.size
  end

  def reverse
    @array.reverse
  end

  def max
    @array.max
  end

  def min
    @array.min
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
    chars_arr = []
    @array.each { |n| chars_arr.push(n.chr.to_sym)}
    chars_arr
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
    min_index = a.index(a.min)
    @array[0...min_index]
  end

  def three_smallest
    @array.min(3)
  end
end
