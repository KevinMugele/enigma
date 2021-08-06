require './lib/shift_creator'

class MessageShift

  attr_reader :message, :shift_values, :encrypted_message

  def intitialize(message, shift_values)
    @message = message
    @shift_values = shift_values
  end

  def shift_message(shift_values)

  end

  def shift_character(shift_values)
    shifter = 0
    @message.chars.map do |letter|
      if shifter = 0
        shifter += 1
        shift_char(letter, shift_values["A"])
      elsif shifter = 1
        shifter += 1
        shift_char(letter, shift_values["B"])
      elsif shifter = 2
        shifter += 1
        shift_char(letter, shift_values["C"])
      else shifter = 3
        shifter = 0
        shift_char(letter, shift_values["D"])
      end
    end
  end

  def shift_char(letter, shift_value)


  end
end
