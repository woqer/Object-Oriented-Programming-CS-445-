# encoding: utf-8
require "./Flyer.rb"

class Bat < Flyer
	def initialize(name)
		super(name)
	end

	def eat(aThing)
		if aThing.is_a?(Creature)
			super
		elsif aThing.is_a?(Thing)
			puts "#{self.toString} won't eat a #{aThing.toString}"
		else
			puts "THIS LINE SHOULD NOT BE PRINTED"
		end
	end

	def fly
		puts "#{self.toString} is swooping through the dark"
	end

	def move
		super
		self.fly
	end
end