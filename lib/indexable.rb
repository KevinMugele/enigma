module Indexable
  def create_index
    ("a".."z").to_a << " "
  end

  def find_index(char)
    create_index.index(char)
  end

  def find_char(index)
    create_index[index]
  end 
end
