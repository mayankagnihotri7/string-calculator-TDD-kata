require 'string_calculator'

RSpec.describe StringCalculator do
  context 'single number' do
    it 'returns 0 for empty string' do
      expect(StringCalculator.add('')).to eq(0)
    end

    it "returns 1 for '1'" do
      expect(StringCalculator.add('1')).to eq(1)
    end

    it "returns 2 for '2'" do
      expect(StringCalculator.add('2')).to eq(2)
    end
  end

  context 'two numbers' do
    it "returns 3 for the string '1,2'" do
      expect(StringCalculator.add('1,2')).to eq(3)
    end

    it "returns 1 for the string '0, 1'" do
      expect(StringCalculator.add('0,1')).to eq(1)
    end

    it "returns 3 for the string '3, 0'" do
      expect(StringCalculator.add('3,0')).to eq(3)
    end

    it "returns 200 for the string '190, 10'" do
      expect(StringCalculator.add('190,10')).to eq(200)
    end

    it "returns 328 for the string '78, 250'" do
      expect(StringCalculator.add('78,250')).to eq(328)
    end
  end

  context 'flexible delimiters' do
    it "returns 3 for the string '1\n,2'" do
      expect(StringCalculator.add("1\n,2")).to eq(3)
    end

    it "returns 6 for the string '1\n2, 3'" do
      expect(StringCalculator.add("1\n2, 3")).to eq(6)
    end

    it "returns 6 for the string '1\n2\n3'" do
      expect(StringCalculator.add("1\n2\n3")).to eq(6)
    end

    it "returns 8 for the string '3\n2\n3, 0'" do
      expect(StringCalculator.add("3\n2\n3, 0")).to eq(8)
    end

    it "returns 358 for the string '78\n250, 25\n25'" do
      expect(StringCalculator.add("78\n250, 25\n25")).to eq(378)
    end

    it "returns 428 for the string '78\n250, 25\n25, 50\n50'" do
      expect(StringCalculator.add("78\n250, 25\n25, 50\n50")).to eq(478)
    end
  end
end
