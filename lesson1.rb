require 'date'
class Lesson1
  def sum(val = 0)
    sum = 0
    val.to_s.split('').each { |x| sum += x.to_i }
    sum
  end

  def age(birthday)
    if birthday.nil?
      'Invalid Date Format'
    else
      date = Date.parse(birthday)
      today = DateTime.now
      years = today.year - date.year
      "Я живу #{years} года или #{years * 365} дней или #{years * 365 * 24} часов или #{years * 365 * 24 * 60} секунд"
    end
  end

  def name
    first_name = gets.chomp
    midle_name = gets.chomp
    last_name = gets.chomp
    "Hello #{first_name} #{midle_name} #{last_name}!"
  end
end
