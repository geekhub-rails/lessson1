require 'date'
class Lesson1
  def sum(val = 0)
    s = 0
  	val.to_s.split('').each { |a| s += a.to_i }
  	s
  end

  def age(birthday)
    def age(birthday)
    	unless birthday
      	'Invalid Date Format'
    	else
      date = Date.parse(birthday)
      today = DateTime.now
      year = today - date
      days = years * 365
      hours = days * 24
      minutes = hours * 60
      seconds = minuts * 60
      "Я живу #{years} года или #{years} дней или #{hours}\n 
      часов или #{minutes} минут или #{seconds} секунд"
    	end
  	end
  end

  def name
    p "First name?"
    first = gets.chomp
    p "Second name?"
    second = gets.chomp
    p "Third name?"
    third = gets.chomp

    p "Hello #{first} #{second} #{third}"
  end
end