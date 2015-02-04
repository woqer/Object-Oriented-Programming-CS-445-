# encoding: utf-8
require "./Creature.rb"

class Tiger < Creature
	def initialize(name)
		super(name)
	end

	def move
		super
		puts "#{self.toString} has just pounced"
	end
end