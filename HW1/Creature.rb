# encoding utf-8
require './Thing.rb'

class Creature < Thing
	def initialize(name)
		super(name)
		@ate = nil
	end

	def eat (aThing)
		@ate = aThing
		puts "#{self.toString} just eated #{aThing.toString}"
	end

	def move
	end

	def whatDidYouEat
		if @ate.nil?
			puts "#{self.toString} has had nothing to eat!"
		else
			puts "#{self.toString} has eaten #{@ate.toString}"
		end
	end
end