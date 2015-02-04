# encoding utf-8

require 'spec_helper'

RSpec.describe Bat do
	test_name = "test_name"
	bat = Bat.new(test_name)
	creat_obj = Creature.new("creat_obj")
	thing_obj = Thing.new("thing_obj")

	describe "#toString" do
		it "prints name and class" do
			expected_toString = "test_name Bat"
			expect(bat.toString).to eq(expected_toString)
		end
	end

	describe "#whatDidYouEat: nothing" do
		it "prints never ate message" do
			expected_mess = "test_name Bat has had nothing to eat!"
			bat.whatDidYouEat
			expect{ print(expected_mess) }.to output.to_stdout
		end
	end

	describe "#whatDidYouEat: nothing-ate_variable = nil" do
		it "@ate variable = nil" do
			expect(bat.instance_variable_get(:@ate)).to eq(nil)
		end
	end

	describe "#eat Thing" do
		it "prints eaten Thing" do
			expected_mess = "test_name Bat won't eat a thing_obj Thing"
			bat.eat(thing_obj)
			expect{ print(expected_mess) }.to output.to_stdout
		end
	end

	describe "#eat Thing-ate_variable" do
		it "@ate variable = Thing" do
			expect(bat.instance_variable_get(:@ate)).to eq(nil)
		end
	end

	describe "#whatDidYouEat: nothing after trying Thing" do
		it "prints never ate message" do
			expected_mess = "test_name Bat has had nothing to eat!"
			bat.whatDidYouEat
			expect{ print(expected_mess) }.to output.to_stdout
		end
	end

	describe "#eat Creature" do
		it "prints eaten Creature" do
			expected_mess = "test_name Bat has just eaten creat_obj Creature"
			bat.eat(creat_obj)
			expect{ print(expected_mess) }.to output.to_stdout
		end
	end

	describe "#eat Creature-ate_variable" do
		it "prints eaten Creature" do
			expect(bat.instance_variable_get(:@ate)).to eq(creat_obj)
		end
	end

	describe "#eat something else" do
		it "prints error message" do
			expected_mess = "THIS LINE SHOULD NOT BE PRINTED"
			bat.eat("what am i?")
			expect{ print(expected_mess) }.to output.to_stdout
		end
	end	

	describe "#fly" do
		it "prints specific fly() message" do
			expected_mess = "test_name Bat is buzzing around in flight"
			bat.fly
			expect{ print(expected_mess) }.to output.to_stdout
		end
	end

	describe "#move" do
		it "prints specific Bat move message" do
			expected_mess = "test_name Bat is buzzing around in flight"
			bat.move
			expect{ print(expected_mess) }.to output.to_stdout
		end
	end

	describe "#whatDidYouEat Creature" do
		it "prints last eaten object" do
			expected_mess = "test_name Bat has eaten creat_obj Creature"
			bat.whatDidYouEat
			expect{ print(expected_mess) }.to output.to_stdout
		end
	end

	describe "#whatDidYouEat: nothing-ate_variable = Creature" do
		it "@ate variable = Creature" do
			expect(bat.instance_variable_get(:@ate)).to eq(creat_obj)
		end
	end
end