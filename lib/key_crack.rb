require 'date'
require './lib/indexable'
require './lib/shift_creator.rb'

class KeyCrack
  include Indexable

  attr_reader :ciphertext

  def initialize(ciphertext)
    @ciphertext = ciphertext
  end

  def find_offset(date)
    offset = ShiftCreator.square_number_last_four(date)
  end

  def find_crack_key(date)
    reversed_message = @ciphertext.chars.reverse
    message_length = @ciphertext.length % 4

    key_hash = {}
    key_hash["A"] = (find_index(reversed_message[0]) - find_index("d")) #- #offset
    key_hash["B"] = (find_index(reversed_message[1]) - find_index("n")) #- #offset
    key_hash["C"] = (find_index(reversed_message[2]) - find_index("e")) #- #offset
    key_hash["D"] = (find_index(reversed_message[3]) - find_index(" ")) #- #offset
    key_hash
  end
end
