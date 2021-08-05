require 'date'
require './lib/enigma'

RSpec.describe Enigma do
  it "exists" do
    enigma = Enigma.new

    expect(enigma).to be_a Enigma
  end

  it "#get_todays_date" do
    enigma = Enigma.new

    expect(enigma.get_todays_date).to eq("08052021")
  end

  it "generates random keys" do
    enigma = Enigma.new

    expect(enigma.generate.length).to eq 5
  end
end
