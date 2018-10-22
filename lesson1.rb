require 'date'
class Lesson1
  def sum(val = 0)
    # TODO\
     val.to_s.split('').each { |n| sum += n.to_i}
     sum
  end

  def age(birthday)
    # TODO
    d, m, y = bday.to_s.split('/')
   is_valid = Date.valid_date? y.to_i, m.to_i, d.to_i
   if is_valid
     days = (Date.parse(bday) - Date.today).to_i.abs
     years = days / 365
     hours = days * 24
     minutes = hours * 60
     second = minutes * 60
      "Я живу #{years} года или #{days} дней или #{hours} часов или #{minutes} минут или #{second} секунд"
   else
     'Invalid date format'
   end
  end

  def name
    # TODO
    name = gets.chomp
    surname = gets.chomp
    patronymic_name = gets.chomp
    "Hello #{surname} #{name} #{patronymic_name}"
  end
end
