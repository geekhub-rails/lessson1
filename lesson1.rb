class Lesson1
  def sum(val = 0)
    arr = val.to_s.chars.map(&:to_i)
    summ = 0
    arr.each { |el| summ += el }
    summ
  end

  def age(birthday)
    ff = birthday.split('/').reverse.map(&:to_i)
    now = Time.now
    birthday = Time.local(*ff)
    @secs = (now - birthday).round
    age_converter
    p "Я живу #{@years} года или #{@days} дней или #{@hours}
      часов или #{@mins} минут или #{@secs} секунд"
  rescue StandardError
    'Invalid Date Format'
  end

  def age_converter
    @mins = @secs / 60
    @hours = @mins / 60
    @days = @hours / 24
    @years = @days / 365
  end

  def name
    name = gets.chomp
    last_name = gets.chomp
    soname = gets.chomp
    p "Hello #{name} #{last_name} #{soname}!"
  end
end
