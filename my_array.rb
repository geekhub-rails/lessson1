class MyArray
  attr_accessor :array

  def initialize(arr = [])
    @array = arr
  end
  def size
     # TODO
     @array.size
   end
   def reverse
     # TODO
     @array.reverse
   end
   def max
     # TODO
     @array.max
   end
   def min
     # TODO
     @array.min
   end
   def desc
     # TODO
     @array.sort.reverse
   end
   def asc
     # TODO
     @array.sort
   end
   def odd
     # TODO
     @array.select {|x| x % 2 !=0}
     end
   end
   def multiple_to_three
     # TODO
     @array.select {|x| x % 3 ==0}
   end
   def uniq
     # TODO
     @array.uniq
   end
   def devide_on_ten
     # TODO
     @array.collect {|x| x.to_f / 10}
   end
   def chars
     # TODO
     arr_abc = ("a".."z").to_a
     @array.collect {|x| x = arr_abc[x-1]}
   end
   def switch
     # TODO
     min_val = @array.min
     min_ind = @array.index(@array.min)
     max_val = @array.max
     max_ind = @array.index(@array.max)
     @array[min_ind] = max_val
     @array[max_ind] = min_val
   end
   def before_min
     # TODO
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
     # TODO
     arr_1 = @array - @array.min
     arr_2 = arr_1 - @array.min
     arr_3 = arr_2 - @array.min
     return arr_3
   end
 end
