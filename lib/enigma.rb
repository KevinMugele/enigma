require 'date'
require './lib/indexable'

class Enigma
  include Indexable
#Keys
  def generate_key
    "0" + rand(1000..9999).to_s
  end

#Offset
  def get_todays_date
    Date.today.strftime("%m%d%Y")
  end

end
