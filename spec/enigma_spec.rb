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

  xit "generates specific a/b/c/d key" do
    enigma = Enigma.new

    allow(enigma).to receive(generate_key).and_return("01234")

    expect(enigma.a_key).to eq 01
    expect(enigma.b_key).to eq 12
    expect(enigma.c_key).to eq 23
    expect(enigma.d_key).to eq 45
  end

  it "generates array for indexes" do
    enigma = Enigma.new

    expect(enigma.create_index.length).to eq(27)
  end

  it "finds index number" do
    enigma = Enigma.new

    expect(enigma.find_index("a")).to eq(0)
    expect(enigma.find_index("f")).to eq(5)
    expect(enigma.find_index(" ")).to eq(26)
  end

  it "squares the date" do
    enigma = Enigma.new

    expect(enigma.square_the_date).to eq(64835042184441)
  end

  it "finds dates last four" do
    enigma = Enigma.new

    expect(enigma.square_date_last_four).to eq("4441")
  end

  it "finds offset values" do
    enigma = Enigma.new

    expect(enigma.find_offset_values["A"]).to eq("4")
    expect(enigma.find_offset_values["B"]).to eq("4")
    expect(enigma.find_offset_values["C"]).to eq("4")
    expect(enigma.find_offset_values["D"]).to eq("1")
  end

  xit "finds shift values for a,b,c,d" do 
    enigma = Enigma.new

    expect(enigma.a_shift).to eq(123)
    expect(enigma.b_shift).to eq(123)
    expect(enigma.c_shift).to eq(123)
    expect(enigma.d_shift).to eq(123)
  end
end
