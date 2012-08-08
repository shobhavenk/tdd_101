module Rectangle
	class Square
		def self.build_square(side)
			return {:error => "cannot pass nil value"} if (side == "")
			return {:error => "characters are not allowed"} if (!is_a_number?(side))
			return {:error => "invalid arguments"} if (side <= 0)
			# return {:error => "imaginary number are not allowed"} if (side.include?('i'))
			new(side, side)
		end

		def initialize(length, breadth)
			@length = length
			@breadth = breadth
		end

		def area
			@length * @breadth
		end

		def self.is_a_number?(s)
			s.to_s.match(/\A[+-]?\d+?(\.\d+)?\Z/) == nil ? false : true
		end
	end
end