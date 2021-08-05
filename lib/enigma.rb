require 'date'

class Enigma
#Keys
  def create_random_keys
    "0" + rand(1000..9999).to_s
  end

#Offset
  def get_todays_date
    Date.today.strftime("%m%d%Y")
  end

end
