class ShiftCreator

  def self.square_number(number)
    number.to_i * number.to_i
  end

  def self.square_number_last_four(number)
    square_number(number).to_s[-4..-1]
  end

  def self.split_keys(number)
    number.chars.each_cons(2).map do |pair|
      pair.join.to_i
    end
  end

  def self.find_shift_values(number, date)
    shift_values = {}
    shift_values["A"] = split_keys(number)[0] + square_number_last_four(date)[0].to_i
    shift_values["B"] = split_keys(number)[1] + square_number_last_four(date)[1].to_i
    shift_values["C"] = split_keys(number)[2] + square_number_last_four(date)[2].to_i
    shift_values["D"] = split_keys(number)[3] + square_number_last_four(date)[3].to_i
    shift_values
  end
end
