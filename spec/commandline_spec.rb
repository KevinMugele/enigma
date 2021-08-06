require './spec/spec_helper'
require 'date'
require './lib/commandline'
require './lib/enigma'

RSpec.describe CommandLine do
  xit "exists and has attributes" do
    commandline = CommandLine.new("data/message.txt data/encrypted.txt")

    expect(commandline).to be_a CommandLine
    expect(commandline.input).to eq("data/message.txt")
    expect(commandline.output).to eq("data/encrypted.txt")
  end
end
