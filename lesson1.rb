require 'date'
class Lesson1
  def sum(*val)
    summa = 0
    val.collect{ |item| summa += item}
    return  print summa
  end

  def age(my_day, my_manth, my_year)

    my_happy_birthday = Date.parse("#{my_year}/#{my_manth}/#{my_day}")
    curr_time = DateTime.now
    years = curr_time.year - my_happy_birthday.year

    if years==0
      days = curr_time.day - my_happy_birthday.day
      return puts "Я живу 0 год или #{days} дней или #{ days * 24} часов или #{days * 24 * 60} минут или #{days * 24 * 60 * 60} секунд"
    else
      return puts "Я живу #{years} года или #{years * 365} дней или #{ years * 365 * 24} часов или #{years * 365 * 24 * 60} минут или #{years * 365 * 24 * 60 * 60} секунд"
    end

  end

  def name

    puts "You surname?"
    surname = gets.chomp
    puts "You name?"
    name = gets.chomp
    puts "You middle name?"
    middle_name = gets.chomp

    return "Hello #{name} Super Man!"

  end
end
