require './spec/spec_helper'
require 'date'
require './lib/enigma'
require './lib/shift_creator'

RSpec.describe ShiftCreator do
  it "exists" do
    shift_creator = ShiftCreator.new

    expect(shift_creator).to be_a ShiftCreator
  end

  it "squares a number" do
    expect(ShiftCreator.square_number("4")).to eq 16
    expect(ShiftCreator.square_number("040895")).to eq 1672401025
  end

  it "finds last four digits of a number" do
    expect(ShiftCreator.square_number_last_four("040895")).to eq("1025")
  end

  it "splits keys" do
    expect(ShiftCreator.split_keys("02715")).to eq([02, 27, 71, 15])
  end

  it "finds shift values" do
    expect(ShiftCreator.find_shift_values("02715", "040895")).to eq({"A"=>3, "B"=>27, "C"=>73, "D"=>20})
  end
end
