require 'date'
class Lesson1
  def sum(val = 0)
    sum = 0
    val.to_s.split('').each { |n| sum += n.to_i }
    sum
  end

  def age(birthday)
    if birthday.is_a? String
      days = (Date.parse(birthday) - Date.today).to_i.abs
      years = days / 365
      hours = days * 24
      minutes = hours * 60
      "Я живу #{years} года или #{days} дней или #{hours}
      часов или #{minutes} минут или #{minutes * 60} секунд"
    else
      'Invalid Date Format'
    end
  end

  def name
    first_name = gets.chomp
    last_name = gets.chomp
    extra_name = gets.chomp
    "Hello #{first_name} #{last_name} #{extra_name}!"
  end
end
