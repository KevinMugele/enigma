require 'date'
require './lib/enigma'
require './lib/shift_creator'
require './lib/message_shift'
require './lib/indexable'

RSpec.describe MessageShift do
  it "exists and has attributes" do
    shift_creator = ShiftCreator.new
    message_shifter = MessageShift.new("Hello World", shift_creator.find_shift_values("04223", "8152021"))

    expect(message_shifter).to be_a MessageShift
    expect(message_shifter.message).to eq("Hello World")
    expect(message_shifter.shift_values).to eq({"A"=>6, "B"=>46, "C"=>30, "D"=>24})
  end

  it "can shift a character" do
    shift_creator = ShiftCreator.new
    message_shifter = MessageShift.new("Hello World", shift_creator.find_shift_values("04223", "8152021"))

    expect(message_shifter.shift_message(shift_values)).to eq()
  end

end
