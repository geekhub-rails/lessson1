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
    @array.sort.reverse
  end

  def asc
    @array.sort
  end

  def odd
    @array.select(&:odd?)
  end

  def multiple_to_three
    @array.select {|x| (x % 3).zero?}
  end

  def uniq
    @array.uniq
  end

  def devide_on_ten
    @array.map {|x| x.to_f / 10}
  end

  def chars
    alphabet = *('a'..'z')
    @array.collect {|char| alphabet[char - 1].to_sym}
  end

  def switch
    min = @array.min
    max = @array.max

    @array[@array.index(max)] = min
    @array[@array.index(min)] = max

    @array
  end

  def before_min
    @array[0...@array.index(@array.min)]
  end

  def three_smallest
    @array.sort.first(3)
  end
end
