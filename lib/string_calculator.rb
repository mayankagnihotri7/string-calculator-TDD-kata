module StringCalculator
  def self.add(string)
    values = extract_values(string)
    values.sum
  end

  def self.extract_values(string)
    # When converting empty string to a integer ruby by
    # default returns 0
    if string.include?("\n")
      string.tr("\n", ',').split(',').map(&:to_i)
    else
      string.split(',').map(&:to_i)
    end
  end
end
