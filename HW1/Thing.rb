# encoding utf-8

class Thing
	def initialize(name)
		@name = name
	end

	def toString
		surname = self.class
		"#{@name} #{surname}"
	end
end

