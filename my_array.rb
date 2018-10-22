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
    @array.select {|x| x % 2 !=0}
    end
  end

  def multiple_to_three
    @array.select {|x| x % 3 ==0}
  end

  def uniq
    @array.uniq
  end

  def devide_on_ten
    @array.collect {|x| x.to_f / 10}
  end

  def chars
    arr_abc = ("a".."z").to_a
    @array.collect {|x| x = arr_abc[x-1]}
  end

  def switch
    min_val = @array.min
    min_ind = @array.index(@array.min)
    max_val = @array.max
    max_ind = @array.index(@array.max)
    @array[min_ind] = max_val
    @array[max_ind] = min_val
  end

  def before_min
    min_value = [4,2,9,1,3,8].min
    [4,2,9,1,3,8].map do |x|
      if x!=min_value
        x = x
      else
        break
      end
    end
  end

  def three_smallest
    arr_1 = @array - @array.min
    arr_2 = arr_1 - @array.min
    arr_3 = arr_2 - @array.min
    return arr_3
  end
end
