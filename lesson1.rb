require 'date'
$LOAD_PATH << File.dirname(__FILE__)
require 'Exception/l_exception'

class Lesson1
  attr_accessor :user_name, :super_hero

  def sum(val = 0)
    string = val.to_s
    arr = string.split ''
    int_arr = []
    arr.each do |x|
      int_arr.push x.to_i
    end
    int_arr.inject(0) { |res, el| res + el }
  end

  def age(birthday)
    calculate_lifetime(birthday)
  rescue LException::InvalidDateFormat => e
    e.message
  end

  def name
    puts 'Your name:'
    @user_name = gets.chomp
    puts 'Your favorite superhero?'
    @super_hero = gets.chomp
    verify_data_input
  rescue LException::InvalidInputData => e
    e.message
  end

  private

  def calculate_lifetime(birthday)
    show_date_exception if birthday.nil? || !birthday.class.equal?(String)
    birth_date = DateTime.parse birthday
    years = DateTime.now.year - birth_date.year
    time_until = DateTime.now - birth_date
    hours, minutes, seconds = Date.day_fraction_to_time time_until
    "Я живу #{years} года или 8721 дней или
 #{hours} часов или #{minutes} минут или #{seconds} секунд"
  end

  def show_date_exception
    raise LException::InvalidDateFormat
  end

  def verify_data_input
    show_exception if user_name_invalid && superhero_invalid
    generate_string
  end

  def show_exception
    raise(LException::InvalidInputData)
  end

  def superhero_invalid
    !@super_hero.class.equal?(String) && @super_hero.equal?('')
  end

  def user_name_invalid
    !@user_name.class.equal?(String) && @user_name.equal?('')
  end

  def generate_string
    "Hello #{@user_name} #{@super_hero} Man!"
  end
end

class Date
  def self.day_fraction_to_time(fr)
    days = fr.to_i
    hours = days * 24
    minutes = hours * 60
    seconds = minutes * 60
    [days, hours, seconds]
  end
end
