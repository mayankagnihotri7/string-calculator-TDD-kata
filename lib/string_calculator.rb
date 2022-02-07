module StringCalculator
  def self.add(string)
    values = extract_values(string)
    values.sum
  end

  def self.extract_values(string)
    # When converting empty string to a integer ruby by
    # default returns 0
    num_array = string.split(/[^0-9-]+/).map(&:to_i)
    return num_array unless check_for_negatives(num_array)
  end

  def self.check_for_negatives(array)
    negatives = array.select(&:negative?)
    return false if negatives.length == 0

    raise_error_if_negative(negatives)
  end

  def self.raise_error_if_negative(negatives)
    raise "negatives not allowed - (#{negatives.join(', ')})"
  end
end
