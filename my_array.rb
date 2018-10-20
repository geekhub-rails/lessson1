class MyArray
  attr_accessor :array

  def initialize(arr = [])
    @array = arr
  end

  def size
    @array.length
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
    @array.sort.reverse
  end

  def asc
    @array.sort
  end

  def odd
    @array.find_all { |i| odd?(i) }
  end

  def multiple_to_three
    @array.find_all { |i| (i % 3).zero? }
  end

  def uniq
    @array.uniq
  end

  def devide_on_ten
    ten = 10
    result = []
    @array.each do |item|
      result.push item.to_f / ten.to_f
    end
    result
  end

  def chars
    chars = [nil, :a, :b, :c]
    result = []
    @array.each do |element|
      result.push chars[element]
    end
    result
  end

  def switch
    @array.sort!.reverse!
    r_element = @array.shift
    @array.reverse!
    @array.unshift r_element
  end

  def before_min
    index = @array.index(@array.min)
    @array.take_while { |i| i < index }
  end

  def three_smallest
    @array.sort.first 3
  end

  private

  def odd?(i)
    (i % 2).odd?
  end
end
