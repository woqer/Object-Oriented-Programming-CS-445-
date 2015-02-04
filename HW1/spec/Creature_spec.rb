# encoding utf-8

require 'spec_helper'

RSpec.describe Creature do
	test_name = "test_name"
	creature = Creature.new(test_name)
	creat_obj = Creature.new("creat_obj")
	thing = Thing.new("thing_obj")

	describe "#toString" do
		it "prints name and class" do
			expected_toString = "test_name Creature"
			expect(creature.toString).to eq(expected_toString)
		end
	end

	describe "#whatDidYouEat: nothing" do
		it "prints never ate message" do
			expected_mess = "test_name Creature has had nothing to eat!"
			creature.whatDidYouEat
			expect{ print(expected_mess) }.to output.to_stdout
		end
	end

	describe "#whatDidYouEat: nothing-ate_variable = nil" do
		it "@ate variable = nil" do
			expect(creature.instance_variable_get(:@ate)).to eq(nil)
		end
	end

	describe "#eat Thing" do
		it "prints eaten Thing" do
			expected_mess = "test_name Creature just eated thing_obj Thing"
			creature.eat(thing)
			expect{ print(expected_mess) }.to output.to_stdout
		end
	end

	describe "#eat Thing-ate_variable" do
		it "@ate variable = Thing" do
			expect(creature.instance_variable_get(:@ate)).to eq(thing)
		end
	end

	describe "#eat Creature" do
		it "prints eaten Creature" do
			expected_mess = "test_name Creature just eated creat_obj Creature"
			creature.eat(creat_obj)
			expect{ print(expected_mess) }.to output.to_stdout
		end
	end

	describe "#eat Creature-ate_variable" do
		it "prints eaten Creature" do
			expect(creature.instance_variable_get(:@ate)).to eq(creat_obj)
		end
	end

	describe "#move" do
		it "stubbed method, returns nothing" do
			creature.move
		end
	end

	describe "#whatDidYouEat Creature" do
		it "prints last eaten object" do
			expected_mess = "test_name Creature has eaten creat_obj Creature"
			creature.whatDidYouEat
			expect{ print(expected_mess) }.to output.to_stdout
		end
	end

	describe "#whatDidYouEat: nothing-ate_variable = Creature" do
		it "@ate variable = nil" do
			expect(creature.instance_variable_get(:@ate)).to eq(creat_obj)
		end
	end
end