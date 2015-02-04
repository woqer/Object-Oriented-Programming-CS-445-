# encoding utf-8

require 'spec_helper'

RSpec.describe Thing do
	test_name = "test_name"
	thing = Thing.new(test_name)

	describe "#toString" do
		it "returns name and class" do
			expected_toString = "test_name Thing"
			expect(thing.toString).to eq(expected_toString)
		end
	end
end