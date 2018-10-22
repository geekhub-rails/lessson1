class MyArray
  attr_accessor :array

  def initialize(arr = [])
    @array = arr
  end

  def size
    count = 0
    @array.each { |val| count += 1  }
    count
  end

  def reverse
    array_reversed = []
    @array.each { |val| array_reversed.unshift(val) }
    array_reversed
  end

  def max
    @array.sort.last
  end

  def min
    @array.sort.first
  end

  def asc
    @array.sort
  end

  def desc
    @array.sort.reverse
  end

  def odd
    arr = []
    @array.each do |val|
      if val % 2 == 1
        arr.push(val)
      end
    end
    arr
  end

  def multiple_to_three
    arr = []
    @array.each do |val|
      if val % 3 == 0
        arr.push(val)
      end
    end
    arr 
  end

  def uniq
    arr = []
    @array.each { |val| arr << val unless arr.include?(val)}
    arr
  end

  def devive_on_ten
    arr = @array.collect { |val| val.to_f / 10 }
    arr
  end

  def charsS
    abc = [*?a..?z]
    arr = @array.map { |val| abc[val - 1].to_sym }
  end

  def switch
    switch_arr = @array

    min = switch_arr.min  
    max = switch_arr.max
    
    switch_arr[switch_arr.index(max)] = min
    switch_arr[switch_arr.index(min)] = max
    switch_arr  
  end

  def three_smallest
    arr = []
    min_i = @array.min
    (0...min_i).each do |val|
      arr.push(val)
    end
    arr 
  end
    
  def before_min
    @array.min(3)
  end
end
