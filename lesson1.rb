require 'date'
class Lesson1
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
		require 'date'
		require 'time'
		birth_date = DateTime.parse birthday
		yearas_old = DateTime.now.year - birthday.year


	end

	def name
		# TODO
	end
end
