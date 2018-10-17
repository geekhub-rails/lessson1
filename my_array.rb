class MyArray
  attr_accessor :array

  def initialize(arr = [])
    @array = arr
  end

  def size
    size = 0
    @array.each { |_x| size += 1 }
    size
  end

  def reverse
    @array.reverse
  end

  def max
    max = 0
    @array.each do |x|
      if x > max
        max = x
      else
        next
      end
    end
    max
  end

  def min
    min = @array[0]
    @array.each do |x|
      if x < min
        min = x
      else
        next
      end
    end
    min
  end

  def desc
    @array.sort { |x, y| y <=> x }
  end

  def asc
    @array.sort
  end

  def odd
    odd = []
    @array.each do |x|
      if x.even?
        next
      else
        odd << x
      end
    end
    odd
  end

  def multiple_to_three
    three = []
    @array.each do |x|
      if x % 3 == 0
        three << x
      else
        next
      end
    end
    three
  end

  def uniq
    @array.uniq
  end

  def devide_on_ten
    arrr = []
    @array.each { |x| arrr << x.to_f / 10 }
    arrr
  end

  def chars
    chars = []
    @array.each { |x| chars << x.chr.to_sym }
    chars
  end

  def switch
    a = @array.index(max)
    b = @array.index(min)
    c = @array.max
    @array[a] = @array[b]
    @array[b] = c
    @array
  end

  def before_min
    min = @array.min
    @array[0...@array.index(min)]
  end

  def three_smallest
    # TODO
  end
end
