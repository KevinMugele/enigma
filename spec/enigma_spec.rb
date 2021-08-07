require './spec/spec_helper'
require './lib/enigma'


RSpec.describe Enigma do
  it "exists" do
    enigma = Enigma.new

    expect(enigma).to be_a Enigma
  end

  it "#get_todays_date" do
    enigma = Enigma.new

    allow(enigma).to receive(:get_todays_date).and_return('080521')

    expect(enigma.get_todays_date).to eq("080521")
  end

  it "generates random keys" do
    enigma = Enigma.new

    allow(enigma).to receive(:generate_key).and_return('10205')

    expect(enigma.generate_key.length).to eq 5
    expect(enigma.generate_key).to eq("10205")
  end

  it "creates encryption hash" do
    enigma = Enigma.new

    expect(enigma.encrypt("Hello World", "02715", "040895")).to eq({"date"=>"040895", "encryption"=>"keder ohulw", "key"=>"02715"})
  end

  it "creates decryption hash" do
    enigma = Enigma.new

    expect(enigma.decrypt("keder ohulw", "02715", "040895")).to eq({"date"=>"040895", "decryption"=>"hello world", "key"=>"02715"})
  end

  it "encrypt a message using todays date" do
    enigma = Enigma.new
    encrypted = enigma.encrypt("hello world", "02715")

    expect(encrypted).to eq({"date"=>"080721", "encryption" => "smfazhqdbty", "key"=>"02715"})
  end

  it "decrypts a message with a key" do
    enigma = Enigma.new
    encrypted = enigma.encrypt("hello world", "02715")

    expect(enigma.decrypt(encrypted["encryption"], "02715")).to eq({"date"=>"080721", "decryption" => "hello world", "key"=>"02715"})
  end

  it "#create_index" do
    enigma = Enigma.new

    expect(enigma.create_index).to eq(["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " "])
  end

  it "#find_index(char)" do
    enigma = Enigma.new

    expect(enigma.find_index("a")).to eq(0)
    expect(enigma.find_index("d")).to eq(3)
    expect(enigma.find_index(" ")).to eq(26)
  end

  it "#find_char(index)" do
    enigma = Enigma.new

    expect(enigma.find_char(0)).to eq("a")
    expect(enigma.find_char(6)).to eq("g")
    expect(enigma.find_char(26)).to eq(" ")
  end
end
