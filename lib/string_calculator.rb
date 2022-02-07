module StringCalculator
  def self.add(string)
    # When converting empty string to a integer ruby by
    # default returns 0
    string.to_i
  end
end
