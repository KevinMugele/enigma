require './spec/spec_helper'
require './lib/enigma'
require './lib/shift_creator'
require './lib/message_shift'


RSpec.describe MessageShift do
  it "exists and has attributes" do
    message_shifter = MessageShift.new("Hello World")

    expect(message_shifter).to be_a MessageShift
    expect(message_shifter.message).to eq("hello world")
  end

  it "can shift a message" do
    message_shifter = MessageShift.new("Hello! World!")

    expect(message_shifter.shift_message("02715", "040895")).to eq("keder! ohulw!")
  end

  it "can decrypt a message" do
    message_shifter = MessageShift.new("Hello World")

    expect(message_shifter.decrypt_message("keder ohulw", "02715", "040895")).to eq("hello world")
  end

  it "creates index" do
    message_shifter = MessageShift.new("Hello World")

    expect(message_shifter.create_index).to eq(["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " "])
  end

  it "#find_index(char)" do
    message_shifter = MessageShift.new("Hello World")

    expect(message_shifter.find_index("a")).to eq(0)
    expect(message_shifter.find_index("d")).to eq(3)
    expect(message_shifter.find_index(" ")).to eq(26)
  end

  it "#find_char(index)" do
    message_shifter = MessageShift.new("Hello World")

    expect(message_shifter.find_char(0)).to eq("a")
    expect(message_shifter.find_char(6)).to eq("g")
    expect(message_shifter.find_char(26)).to eq(" ")
  end
end
