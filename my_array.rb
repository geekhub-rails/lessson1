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
    @array.select { |x| (x % 3).zero? }
  end

  def uniq
    @array.uniq
  end

  def devide_on_ten
    @array.map { |x| x.to_f / 10 }
  end

  def chars
    chars = *('a'..'z')
    @array.map { |x| chars[x - 1].to_sym }
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
    @array.sort.first(3)
  end
end
