require './spec/spec_helper'
require './lib/key_crack'

RSpec.describe KeyCrack do
  it "exists and has attributes" do
    key_cracker = KeyCrack.new("keder ohulwthnw")

    expect(key_cracker).to be_a KeyCrack
    expect(key_cracker.ciphertext).to eq("keder ohulwthnw")
  end

  it "finds_offset" do
    key_cracker = KeyCrack.new("keder ohulwthnw")

    expect(key_cracker.find_offset("040895")).to eq(1025)
  end

  it "finds_crack_key" do
    key_cracker = KeyCrack.new("keder ohulwthnw")

    expect(key_cracker.finds_crack_key("040895")).to eq("02715")
  end
end
