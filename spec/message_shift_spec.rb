require 'date'
require './lib/enigma'
require './lib/shift_creator'
require './lib/message_shift'
require './lib/indexable'

RSpec.describe MessageShift do
  it "exists and has attributes" do
    message_shifter = MessageShift.new("Hello World")

    expect(message_shifter).to be_a MessageShift
    expect(message_shifter.message).to eq("hello world")
  end

  it "can shift a character" do
    message_shifter = MessageShift.new("Hello World")

    expect(message_shifter.shift_message("02715", "040895")).to eq("keder ohulw")
  end

end
