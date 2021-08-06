require './lib/shift_creator'
require './lib/indexable'

class MessageShift
  include Indexable

  attr_reader :message, :shift_values

  def initialize(message, shift_values)
    @message = message
    @shift_values = shift_values
  end

  def shift_message(shift_values)
    shifter = 0
    encrypted = @message.chars.map do |letter|
      if shifter == 0
        shifter += 1
        shift_char(letter, @shift_values["A"])
      elsif shifter == 1
        shifter += 1
        shift_char(letter, @shift_values["B"])
      elsif shifter == 2
        shifter += 1
        shift_char(letter, @shift_values["C"])
      else shifter == 3
        shifter = 0
        shift_char(letter, @shift_values["D"])
      end
    end
    encrypted
  end

  def shift_char(letter, shift_value)
    index = find_index(letter)
    new_value = index + shift_value #need to make this only loop through total indexes (27)
    find_char(new_value)
  end
end
