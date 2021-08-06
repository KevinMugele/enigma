require './lib/shift_creator'

class MessageShift

  attr_reader :message, :shift_values, :encrypted_message

  def intitialize(message, shift_values)
    @message = message
    @shift_values = shift_values
  end

  def shift_message(message, shift_values)

  end

  def shift_character
    @message.chars.each do |letter|
      

  end

end
