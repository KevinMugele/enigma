require 'date'
require './lib/indexable'
require './lib/shift_creator.rb'

class KeyCrack
  include Indexable

  attr_reader :ciphertext

  def initialize(ciphertext)
    @ciphertext = ciphertext.downcase
  end

  def find_offset(date)
    offset = ShiftCreator.square_number_last_four(date)
    offset.to_i
  end

  def finds_crack_key(date)
    enigma = Enigma.new
    key = enigma.generate_key
    shift = MessageShift.new(@ciphertext)

    until shift.decrypt_message(@ciphertext, key, date).end_with?(" end") do
      key = enigma.generate_key
      shift = MessageShift.new(@ciphertext)
    end
    key
  end
end
