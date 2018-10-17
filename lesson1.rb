require 'date'
class Lesson1
  def initialize
    @today = Date.today
  end

  def sum(val = 0)
    val.to_s.chars.map(&:to_i).reduce { |sum, char| sum + char }
  end

  def age(birthday)
    return 'Invalid Date Format' unless birthday
    days = get_days(birthday)
    hours = days * 24
    minutes = hours * 60
    seconds = minutes * 60
    "Я живу #{get_years(birthday)} года " \
      "или #{days.to_i} дней " \
      "или #{hours.to_i} часов " \
      "или #{minutes.to_i} минут " \
      "или #{seconds.to_i} секунд"
  end

  def name
    "Hello #{gets.chomp} #{gets.chomp} #{gets.chomp}!"
  end

  private

  def forever_young(years)
    years.to_i - 3
  end

  def get_days(birthday)
    birth = get_birth(birthday)
    @today - birth
  end

  def get_birth(birthday)
    date = Date.strptime(birthday, '%d/%m/%Y')
    Date.civil(date.year, date.month, date.day)
  end

  def get_years(birthday)
    birth = get_birth(birthday)
    forever_young((@today.year - birth.year).to_s)
  end
end
