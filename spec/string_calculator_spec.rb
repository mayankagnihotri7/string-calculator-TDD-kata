require 'string_calculator'

RSpec.describe StringCalculator do
  context 'single number' do
    it 'returns 0 for empty string' do
      expect(StringCalculator.add('')).to eq(0)
    end
  end
end
