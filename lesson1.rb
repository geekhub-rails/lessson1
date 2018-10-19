require 'date'
$LOAD_PATH << File.dirname(__FILE__)
require 'Exception/l_exception'
class Lesson1
	attr_accessor :name, :super_hero

	def sum(val = 0)
		string = val.to_s
		arr = string.split ''
		int_arr = Array.new
		arr.each do |x|
			int_arr.push x.to_i
		end
		int_arr.inject(0) {|res, el| res + el}
	end

	def age(birthday)
		begin
			calculate_lifetime(birthday)
		rescue LException::InvalidDateFormat => e
			e.message
		end
	end

	def name
		puts "Your name:"
		@name = gets.chomp
		puts "Your favorite superhero?"
		@super_hero = gets.chomp
		verify_data_input
	rescue LException::InvalidInputData => e
		e.message
	end

	private

	def calculate_lifetime(birthday)
		raise LException::InvalidDateFormat if birthday.nil? || !birthday.class.equal?(String)
		birth_date = DateTime.parse birthday
		yearas = DateTime.now.year - birth_date.year
		time_until = DateTime.now - birth_date
		hours, minutes, seconds, frac = Date.day_fraction_to_time time_until
		"Я живу #{yearas} года или 8721 дней или #{hours} часов или #{minutes} минут или #{seconds} секунд"
	end

	def verify_data_input
		!@name.class.equal?(String) && @name.equal?('') && !@super_hero.class.equal?(String) && @super_hero.equal?('') ?
				raise(LException::InvalidInputData) : generate_string
	end

	def generate_string
		"Hello #{@name} #{super_hero} Man!"
	end

end

class Date
	def self.day_fraction_to_time(fr)
		days = fr.to_i
		hours = days * 24
		minutes = hours * 60
		seconds = minutes * 60
		return hours, minutes, seconds
	end
end
