module Indexable
  def create_index
    ("a".."z").to_a << " "
  end

  def find_index(char)
    create_index.index(char)
  end 

end
