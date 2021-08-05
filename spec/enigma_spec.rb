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

    expect(enigma.generate_key.length).to eq 5
  end

  it "generates array for indexes" do
    enigma = Enigma.new

    expect(enigma.create_index.length).to eq(27)
  end
end
