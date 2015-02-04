# encoding: utf-8
require './Thing.rb'
require './Creature.rb'
require './Tiger'
require './Ant'
require './Bat'
require './Fly'

# class TestCreature
# 	attr_reader @THING_COUNT, @CREATURE_COUNT

# 	def initialize
# 		@THING_COUNT = 10
# 		@CREATURE_COUNT = 6
# 	end
# end

#################################################
# Main
#################################################

THING_COUNT = 10
CREATURE_COUNT = 6

def print_arr(arr)
	arr.each do |element|
		if element.is_a?(Creature)
			puts element.toString
		else
			puts element
		end
	end	
end

# Create array of things
arr_of_things = Array.new(THING_COUNT) do |i|
	Thing.new("thing_#{i}")
end

# Print name (reference) to each Thing object
print_arr(arr_of_things)

arr_of_things[0] = Tiger.new("kitty")
arr_of_things[1] = Tiger.new("tiggy")

print_arr(arr_of_things)

puts ""
puts "------ Next section of tests ------"
puts ""

arr_of_creatures = Array.new(CREATURE_COUNT)
arr_of_movers = Array.new

arr_of_creatures[0] = Fly.new("Archie")
arr_of_creatures[1] = Bat.new("Bruce")
arr_of_creatures[2] = Ant.new("Hank")
arr_of_creatures[3] = Fly.new("Walter")
arr_of_creatures[4] = Bat.new("Wayne")
arr_of_creatures[5] = Ant.new("Zeta")

arr_of_movers[0] = arr_of_creatures[0]
arr_of_movers[1] = arr_of_creatures[1]
arr_of_movers[2] = arr_of_creatures[2]
arr_of_movers[3] = arr_of_things[0]

puts "Things: "
puts ""

arr_of_things.each do |thing|
	puts thing.toString
end

puts ""
puts "Creatures: "
puts ""
puts "---names---"
arr_of_creatures.each do |creature|
	puts creature.toString
end
puts "---eaters: Thing---"
arr_of_creatures.each do |creature|
	creature.eat(arr_of_things[2])
	creature.whatDidYouEat
end
puts "---eaters: Creature---"
arr_of_creatures.each do |creature|
	creature.eat(arr_of_creatures[2])
	creature.whatDidYouEat
end
puts "---movers---"
arr_of_movers.each do |mover|
	mover.move
end
