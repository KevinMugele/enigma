require './spec/spec_helper'
require 'date'
require './lib/enigma'
require './lib/shift_creator'
require './lib/message_shift'
require './lib/indexable'

RSpec.describe Enigma do
  it "exists" do
    enigma = Enigma.new

    expect(enigma).to be_a Enigma
  end

  it "#get_todays_date" do
    enigma = Enigma.new

    expect(enigma.get_todays_date).to eq("08062021")
  end

  it "generates random keys" do
    enigma = Enigma.new

    expect(enigma.generate_key.length).to eq 5
  end

  it "creates encryption hash" do
    enigma = Enigma.new

    expect(enigma.encrypt("Hello World", "02715", "040895")).to eq({"date"=>"040895", "encryption"=>"keder ohulw", "key"=>"02715"})
  end

  it "creates decryption hash" do
    enigma = Enigma.new

    expect(enigma.decrypt("keder ohulw", "02715", "040895")).to eq({"date"=>"040895", "decryption"=>"hello world", "key"=>"02715"})
  end

end
