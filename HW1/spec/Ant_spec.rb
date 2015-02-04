# encoding utf-8

require 'spec_helper'

RSpec.describe Ant do
	test_name = "test_name"
	ant = Ant.new(test_name)
	creat_obj = Creature.new("creat_obj")
	thing_obj = Thing.new("thing_obj")

	describe "#toString" do
		it "prints name and class" do
			expected_toString = "test_name Ant"
			expect(ant.toString).to eq(expected_toString)
		end
	end

	describe "#whatDidYouEat: nothing" do
		it "prints never ate message" do
			expected_mess = "test_name Ant has had nothing to eat!"
			ant.whatDidYouEat
			expect{ print(expected_mess) }.to output.to_stdout
		end
	end

	describe "#whatDidYouEat: nothing-ate_variable = nil" do
		it "@ate variable = nil" do
			expect(ant.instance_variable_get(:@ate)).to eq(nil)
		end
	end

	describe "#eat Thing" do
		it "prints eaten Thing" do
			expected_mess = "test_name Ant has just eaten thing_obj Thing"
			ant.eat(thing_obj)
			expect{ print(expected_mess) }.to output.to_stdout
		end
	end

	describe "#eat Thing-ate_variable" do
		it "@ate variable = Thing" do
			expect(ant.instance_variable_get(:@ate)).to eq(thing_obj)
		end
	end

	describe "#whatDidYouEat: after trying Thing" do
		it "prints has eaten Thing" do
			expected_mess = "test_name Ant has eaten thing_obj Thing"
			ant.whatDidYouEat
			expect{ print(expected_mess) }.to output.to_stdout
		end
	end

	describe "#eat Creature" do
		it "prints eaten Creature" do
			expected_mess = "test_name Ant has just eaten creat_obj Creature"
			ant.eat(creat_obj)
			expect{ print(expected_mess) }.to output.to_stdout
		end
	end

	describe "#eat Creature-ate_variable" do
		it "prints eaten Creature" do
			expect(ant.instance_variable_get(:@ate)).to eq(creat_obj)
		end
	end

	describe "#whatDidYouEat: after trying Creature" do
		it "prints has eaten Creature" do
			expected_mess = "test_name Ant has eaten creat_obj Creature"
			ant.whatDidYouEat
			expect{ print(expected_mess) }.to output.to_stdout
		end
	end

	describe "#whatDidYouEat: after trying something else" do
		it "prints has eaten Creature" do
			expected_mess = "test_name Ant has eaten creat_obj Creature"
			ant.whatDidYouEat
			expect{ print(expected_mess) }.to output.to_stdout
		end
	end

	describe "#whatDidYouEat: nothing-ate_variable = Creature" do
		it "@ate variable = Creature" do
			expect(ant.instance_variable_get(:@ate)).to eq(creat_obj)
		end
	end

	describe "#move" do
		it "prints specific Ant move message" do
			expected_mess = "test_name Ant is is crawling around"
			ant.move
			expect{ print(expected_mess) }.to output.to_stdout
		end
	end

end