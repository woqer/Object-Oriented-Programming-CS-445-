# encoding: utf-8
require "./Flyer.rb"

class Fly < Flyer
	def initialize(name)
		super(name)
	end

	def eat(aThing)
		if aThing.is_a?(Creature)
			puts "#{self.toString} won't eat a #{aThing.toString}"
		elsif aThing.is_a?(Thing)
			super
		else
			puts "THIS LINE SHOULD NOT BE PRINTED"
		end
	end

	def fly
		puts "#{self.toString} is buzzing around in flight"
	end

	def move
		super
		self.fly
	end
end