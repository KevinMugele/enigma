require './spec/spec_helper'
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

  it "can shift a message" do
    message_shifter = MessageShift.new("Hello World")

    expect(message_shifter.shift_message("02715", "040895")).to eq("keder ohulw")
  end

  it "can decrypt a message" do
    message_shifter = MessageShift.new("Hello World")

    expect(message_shifter.decrypt_message("keder ohulw", "02715", "040895")).to eq("hello world")
  end

  it "finds_crack_key" do
    message_shifter = MessageShift.new("keder ohulwthnw")

    expect(message_shifter.find_crack_key("040895")).to eq({})
  end 
end
