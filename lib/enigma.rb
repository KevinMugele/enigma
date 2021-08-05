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

  def square_the_date
    today = get_todays_date.to_i
    (today * today)
  end

  def square_date_last_four
    offset = square_the_date.to_s[-4..-1]
    offset.to_i

  end

end
