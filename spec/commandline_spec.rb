require 'date'
require './lib/commandline'
require './lib/enigma'

RSpec.describe CommandLine do
  xit "exists and has attributes" do
    commandline = CommandLine.new("message.txt encrypted.txt")

    expect(commandline).to be_a CommandLine
    expect(commandline.input).to eq("message.txt")
    expect(commandline.output).to eq("encrypted.txt")
  end
end
