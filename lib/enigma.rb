require 'date'
require './lib/indexable'

class Enigma
  include Indexable
#Keys
  def generate_key
    "0" + rand(1000..9999).to_s
  end

  def a_key
    generate_key.to_i[0..1]
  end

  def a_key
    generate_key.to_i[1..2]
  end

  def a_key
    generate_key.to_i[2..3]
  end

  def d_key
    generate_key.to_i[3..4]
  end

#Offset
  def get_todays_date
    Date.today.strftime("%m%d%Y")
  end

end
