class ShiftCreator

  def square_number(number)
    number.to_i * number.to_i
  end

  def square_number_last_four
    offset = square_number.to_s[-4..-1]
    offset
  end

  def find_offset_values(date)
    square_number_last_four(square_number(date))
  end

  def split_keys(number)
    keys = []
    number.each_cons(2).map do |pair|
      keys << pair.to_i
    end
    keys
  end

  def find_shift_values
    shift_values = {}
    shift_values["A"] = split_keys[0] + find_offset_values[0]
    shift_values["B"] = split_keys[1] + find_offset_values[1]
    shift_values["C"] = split_keys[2] + find_offset_values[2]
    shift_values["D"] = split_keys[3] + find_offset_values[3]
    shift_values
  end
end
