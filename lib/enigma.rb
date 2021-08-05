require 'date'
require './lib/indexable'

class Enigma
  include Indexable
#Keys
  def generate_key
    "0" + rand(1000..9999).to_s
  end

  def find_keys
    find_keys = {}
    find_keys["A"] = generate_key.to_i[0..1]
    find_keys["B"] = generate_key.to_i[1..2]
    find_keys["C"] = generate_key.to_i[2..3]
    find_keys["D"] = generate_key.to_i[3..4]
    find_keys
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
    offset
  end

  def find_offset_values
    offset_values = {}
    offset_values["A"] = square_date_last_four[0]
    offset_values["B"] = square_date_last_four[1]

    offset_values["C"] = square_date_last_four[2]
    offset_values["D"] = square_date_last_four[3]
    offset_values
  end

#Shifts
  def a_shift
    find_keys["A"].to_i + find_offset_values["A"].to_i
  end

  def b_shift
    find_keys["B"].to_i + find_offset_values["B"].to_i
  end

  def c_shift
    find_keys["C"].to_i + find_offset_values["C"].to_i
  end

  def d_shift
    find_keys["D"].to_i + find_offset_values["D"].to_i
  end

end
