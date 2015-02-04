# encoding utf-8

require 'spec_helper'

RSpec.describe Tiger do
	test_name = "test_name"
	tiger = Tiger.new(test_name)
	creat_obj = Creature.new("creat_obj")
	thing = Thing.new("thing_obj")

	describe "#toString" do
		it "prints name and class" do
			expected_toString = "test_name Tiger"
			expect(tiger.toString).to eq(expected_toString)
		end
	end

	describe "#whatDidYouEat: nothing" do
		it "prints never ate message" do
			expected_mess = "test_name Tiger has had nothing to eat!"
			tiger.whatDidYouEat
			expect{ print(expected_mess) }.to output.to_stdout
		end
	end

	describe "#whatDidYouEat: nothing-ate_variable = nil" do
		it "@ate variable = nil" do
			expect(tiger.instance_variable_get(:@ate)).to eq(nil)
		end
	end

	describe "#eat Thing" do
		it "prints eaten Thing" do
			expected_mess = "test_name Tiger just eated thing_obj Thing"
			tiger.eat(thing)
			expect{ print(expected_mess) }.to output.to_stdout
		end
	end

	describe "#eat Thing-ate_variable" do
		it "@ate variable = Thing" do
			expect(tiger.instance_variable_get(:@ate)).to eq(thing)
		end
	end

	describe "#eat Creature" do
		it "prints eaten Creature" do
			expected_mess = "test_name Tiger just eated creat_obj Creature"
			tiger.eat(creat_obj)
			expect{ print(expected_mess) }.to output.to_stdout
		end
	end

	describe "#eat Creature-ate_variable" do
		it "prints eaten Creature" do
			expect(tiger.instance_variable_get(:@ate)).to eq(creat_obj)
		end
	end

	describe "#move" do
		it "prints specific tiger move message" do
			expected_mess = "test_name Tiger has just pounced"
			tiger.move
			expect{ print(expected_mess) }.to output.to_stdout
		end
	end

	describe "#whatDidYouEat Creature" do
		it "prints last eaten object" do
			expected_mess = "test_name Tiger has eaten creat_obj Creature"
			tiger.whatDidYouEat
			expect{ print(expected_mess) }.to output.to_stdout
		end
	end

	describe "#whatDidYouEat: nothing-ate_variable = Creature" do
		it "@ate variable = Creature" do
			expect(tiger.instance_variable_get(:@ate)).to eq(creat_obj)
		end
	end
end