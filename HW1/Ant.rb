# encoding: utf-8
require "./Creature.rb"

class Ant < Creature
	def initialize(name)
		super(name)
	end

	def move
		super
		puts "#{self.toString} is crawling around"
	end
end