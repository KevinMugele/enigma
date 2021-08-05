require 'date'
require './lib/indexable'

class Enigma
  include Indexable

#Keys
  def generate_key
    "0" + rand(1000..9999).to_s
  end

  def get_todays_date
    Date.today.strftime("%m%d%Y")
  end

  def encrypt(message, key =  generate_key, date = get_todays_date)
    encrypt = {}
    encrypt[encryption] = #ENCRYPTED MESSAGE
    encrypt[key] = key
    encrypt[date] = date
  end

end
