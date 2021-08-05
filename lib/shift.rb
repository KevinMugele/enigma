class Shift

  def square_number(number)
    number.to_i * number.to_i
  end

  def square_number_last_four
    offset = square_number.to_s[-4..-1]
    offset
  end

  def find_offset_values
    offset_values = {}
    offset_values["A"] = square_number_last_four[0]
    offset_values["B"] = square_number_last_four[1]

    offset_values["C"] = square_number_last_four[2]
    offset_values["D"] = square_number_last_four[3]
    offset_values
  end

  def find_keys(number)
    find_keys = {}
    find_keys["A"] = number.to_i[0..1]
    find_keys["B"] = number.to_i[1..2]
    find_keys["C"] = number.to_i[2..3]
    find_keys["D"] = number.to_i[3..4]
    find_keys
  end

  def find_shift_values
    shift_values = {}
    shift_values["A"] = find_keys["A"].to_i + find_offset_values["A"].to_i
    shift_values["B"] = find_keys["B"].to_i + find_offset_values["B"].to_i
    shift_values["C"] = find_keys["C"].to_i + find_offset_values["C"].to_i
    shift_values["D"] = find_keys["D"].to_i + find_offset_values["D"].to_i
    shift_values
  end
end
