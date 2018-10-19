module LException
	class InvalidDateFormat < StandardError
		def initialize
			super 'Invalid Date Format'
		end
	end
	class InvalidInputData < StandardError
		def initialize
			super 'Invalid input data'
		end
	end
end
