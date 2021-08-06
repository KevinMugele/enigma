require 'date'
require './lib/indexable'
require './lib/shift_creator'
require './lib/message_shift'

class Enigma
  include Indexable

#Keys
  def generate_key
    "0" + rand(1000..9999).to_s
  end

  def get_todays_date
    Date.today.strftime("%m%d%Y")
  end

  def encrypt(message, key = generate_key, date = get_todays_date)
    message_shifter = MessageShift.new(message)
    encrypt = {}
    encrypt["encryption"] = message_shifter.shift_message(key, date)
    encrypt["key"] = key
    encrypt["date"] = date
    encrypt
  end

end
