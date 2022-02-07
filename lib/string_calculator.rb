module StringCalculator
  def self.add(string)
    values = extract_values(string)
    values.sum
  end

  def self.extract_values(string)
    # When converting empty string to a integer ruby by
    # default returns 0
    string.split(',').map(&:to_i)
  end
end
