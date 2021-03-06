require 'date'
require './lib/indexable'
require './lib/shift_creator'
require './lib/message_shift'

class Enigma
  include Indexable

  def generate_key
    rand(99999).to_s.rjust(5, "0")
  end

  def get_todays_date
    Date.today.strftime("%m%d%y")
  end

  def encrypt(message, key = generate_key, date = get_todays_date)
    message_shifter = MessageShift.new(message)
    encrypt = {
      "encryption" => message_shifter.shift_message(key, date),
      "key" => key,
      "date" => date
    }
  end

  def decrypt(message, key, date = get_todays_date)
    message_shifter = MessageShift.new(message)
    decrypt = {
      "decryption" => message_shifter.decrypt_message(message, key, date),
      "key" => key,
      "date" => date
    }
  end

  def crack(ciphertext, date = get_todays_date)
    key_cracker = KeyCrack.new(ciphertext)
    message_shifter = MessageShift.new(ciphertext)
    cracked_key = key_cracker.finds_crack_key(date)
    cracked = {
      "decryption" => message_shifter.decrypt_message(ciphertext, cracked_key, date),
      "key" => cracked_key,
      "date" => date
    }
  end
end
