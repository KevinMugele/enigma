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
    encrypt = {}
    encrypt["encryption"] = message_shifter.shift_message(key, date)
    encrypt["key"] = key
    encrypt["date"] = date
    encrypt
  end

  def decrypt(message, key, date = get_todays_date)
    message_shifter = MessageShift.new(message)
    decrypt = {}
    decrypt["decryption"] = message_shifter.decrypt_message(message, key, date)
    decrypt["key"] = key
    decrypt["date"] = date
    decrypt
  end

  def crack(ciphertext, date = get_todays_date)
    message_shifter = MessageShift.new(message)
    key_cracker = KeyCrack.new(ciphertext)
    cracked = {}
    cracked["decryption"] = message_shifter.decrypt_message(ciphertext, key_cracker, date)
    cracked["key"] = key_cracker
    cracked["date"] = date
    cracked
  end
end
