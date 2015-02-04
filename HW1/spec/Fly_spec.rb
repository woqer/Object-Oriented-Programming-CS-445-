# encoding utf-8

require 'spec_helper'

RSpec.describe Fly do
	test_name = "test_name"
	fly = Fly.new(test_name)
	creat_obj = Creature.new("creat_obj")
	thing_obj = Thing.new("thing_obj")

	describe "#toString" do
		it "prints name and class" do
			expected_toString = "test_name Fly"
			expect(fly.toString).to eq(expected_toString)
		end
	end

	describe "#whatDidYouEat: nothing" do
		it "prints never ate message" do
			expected_mess = "test_name Fly has had nothing to eat!"
			fly.whatDidYouEat
			expect{ print(expected_mess) }.to output.to_stdout
		end
	end

	describe "#whatDidYouEat: nothing-ate_variable = nil" do
		it "@ate variable = nil" do
			expect(fly.instance_variable_get(:@ate)).to eq(nil)
		end
	end

	describe "#eat Creature" do
		it "prints eaten Creature" do
			expected_mess = "test_name Fly won't eat a creat_obj Creature"
			fly.eat(creat_obj)
			expect{ print(expected_mess) }.to output.to_stdout
		end
	end

	describe "#eat Creature-ate_variable" do
		it "prints eaten Creature" do
			expect(fly.instance_variable_get(:@ate)).to eq(nil)
		end
	end

	describe "#whatDidYouEat: nothing after trying Thing" do
		it "prints never ate message" do
			expected_mess = "test_name Fly has had nothing to eat!"
			fly.whatDidYouEat
			expect{ print(expected_mess) }.to output.to_stdout
		end
	end

	describe "#eat Thing" do
		it "prints eaten Thing" do
			expected_mess = "test_name Fly just eated thing_obj Thing"
			fly.eat(thing_obj)
			expect{ print(expected_mess) }.to output.to_stdout
		end
	end

	describe "#eat Thing-ate_variable" do
		it "@ate variable = Thing" do
			expect(fly.instance_variable_get(:@ate)).to eq(thing_obj)
		end
	end

	describe "#eat something else" do
		it "prints error message" do
			expected_mess = "THIS LINE SHOULD NOT BE PRINTED"
			fly.eat("what am i?")
			expect{ print(expected_mess) }.to output.to_stdout
		end
	end	

	describe "#fly" do
		it "prints specific fly() message" do
			expected_mess = "test_name Fly is buzzing around in flight"
			fly.fly
			expect{ print(expected_mess) }.to output.to_stdout
		end
	end

	describe "#move" do
		it "prints specific Fly move message" do
			expected_mess = "test_name Fly is buzzing around in flight"
			fly.move
			expect{ print(expected_mess) }.to output.to_stdout
		end
	end

	describe "#whatDidYouEat Thing" do
		it "prints last eaten object" do
			expected_mess = "test_name Fly has eaten thing_obj Thing"
			fly.whatDidYouEat
			expect{ print(expected_mess) }.to output.to_stdout
		end
	end

	describe "#whatDidYouEat: nothing-ate_variable = Thing" do
		it "@ate variable = Thing" do
			expect(fly.instance_variable_get(:@ate)).to eq(thing_obj)
		end
	end
end