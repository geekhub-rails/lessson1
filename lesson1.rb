require 'date'
class Lesson1
  def sum(val = 0)
    val.to_s.chars.map(&:to_i).reduce {|sum, char| sum += char}
  end

  def age(birthday)
    return 'Invalid Date Format' unless birthday

    date = Date.strptime(birthday, '%d/%m/%Y')
    birth = Date.civil(date.year, date.month, date.day)
    now = Date.today

    years = (now.year - birth.year).to_s
    days = now - birth
    hours = days * 24
    minutes = hours * 60
    seconds = minutes * 60

    "Я живу #{forever_young(years)} года или #{days.to_i} дней или #{hours.to_i} часов или #{minutes.to_i} минут или #{seconds.to_i} секунд"
  end

  def name
    "Hello #{gets.chomp} #{gets.chomp} #{gets.chomp}!"
  end

  def forever_young(years)
    years.to_i - 3
  end
end
