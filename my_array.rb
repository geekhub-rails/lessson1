class MyArray
  attr_accessor :array

  def initialize(arr = [])
    @array = arr
  end

  def size
    @array.size
  end

  def reverse
    @array.reverse!
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
    @array.select(&:odd?)
  end

  def multiple_to_three
    @array.select { |x| x if (x % 3).zero? }
  end

  def uniq
    @array.uniq!
  end

  def devide_on_ten
    @array.collect { |x| x.to_f / 10 }
  end

  def chars
    alphabet_str = ' abcdefghijklmnopqrstuvwxyz'
    arr = []
    @array.each { |el| arr.push(alphabet_str[el].to_sym) }
    arr
  end

  def switch
    index_min = @array.index(@array.min)
    index_max = @array.index(@array.max)
    arr = []
    @array.each { |el| arr.push(el) }
    arr[index_min] = @array.max
    arr[index_max] = @array.min
    arr
  end

  def before_min
    return [] if @array.empty?
    index_min = @array.index(@array.min)
    @array[0...index_min]
  end

  def three_smallest
    # arr = @array.clone
    # arr_smallest = []
    # arr_smallest.push(arr.delete(arr.min)).
    # push(arr.delete(arr.min)).push(arr.delete(arr.min))
    @array.sort[0..2]
  end
end
