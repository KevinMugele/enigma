require './lib/shift_creator'
require './lib/indexable'

class MessageShift
  include Indexable

  attr_reader :message

  def initialize(message)
    @message = message.downcase
  end

  def create_shift_values(number, date)
    shift_values = ShiftCreator.find_shift_values(number, date)
  end

  def shift_message(number, date)
    shifter = 0
    shift_values = create_shift_values(number, date)
    encrypted = @message.chars.map do |letter|
      if shifter == 0
        shifter += 1
        shift_char(letter, shift_values["A"])
      elsif shifter == 1
        shifter += 1
        shift_char(letter, shift_values["B"])
      elsif shifter == 2
        shifter += 1
        shift_char(letter, shift_values["C"])
      else shifter == 3
        shifter = 0
        shift_char(letter, shift_values["D"])
      end
    end
    encrypted.join
  end

  def shift_char(letter, shift_value)
    index = find_index(letter)
    new_value = (index + shift_value) % 27
    find_char(new_value)
  end

  def decrypt_message(number, date)
    shifter = 0
    shift_values = create_shift_values(number, date)
    decrypted = @message.chars.map do |letter|
      if shifter == 0
        shifter += 1
        decrypt_char(letter, shift_values["A"])
      elsif shifter == 1
        shifter += 1
        decrypt_char(letter, shift_values["B"])
      elsif shifter == 2
        shifter += 1
        decrypt_char(letter, shift_values["C"])
      else shifter == 3
        shifter = 0
        decrypt_char(letter, shift_values["D"])
      end
    end
    encrypted.join
  end

  def decrypt_char(letter, shift_value)
    index = find_index(letter)
    new_value = (index - shift_value) % 27
    find_char(new_value)
  end
end
