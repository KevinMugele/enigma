require 'date'
require './lib/enigma'
require './lib/shift_creator'

RSpec.describe ShiftCreator do
  it "exists" do
    shift_creator = ShiftCreator.new

    expect(shift_creator).to be_a ShiftCreator
  end

  it "squares a number" do
    shift_creator = ShiftCreator.new

    expect(shift_creator.square_number(4)).to eq 16
    expect(shift_creator.square_number(2424)).to eq 5875776
  end

  it "finds last four digits of a number" do
    shift_creator = ShiftCreator.new

    expect(shift_creator.square_number(2424)).to eq 5875776
    expect(shift_creator.square_number_last_four(2424)).to eq("5776")
  end

  it "finds offset value based off date" do
    shift_creator = ShiftCreator.new

    expect(shift_creator.find_offset_values(8152021)).to eq("2481")
  end

  it "splits keys" do
    shift_creator = ShiftCreator.new

    expect(shift_creator.split_keys("04223")).to eq([04, 42, 22, 23])
  end
end
