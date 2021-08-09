require './spec/spec_helper'
require './lib/crack_key'

RSpec.describe KeyCrack do
  xit "finds_crack_key" do
    message_shifter = MessageShift.new("keder ohulwthnw")

    expect(message_shifter.find_crack_key("040895")).to eq({})
  end
end
