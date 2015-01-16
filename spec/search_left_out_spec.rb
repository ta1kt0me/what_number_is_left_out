require_relative '../lib/search_left_out'

describe SearchLeftOut do
  describe '#search_left_out' do
    subject { SearchLeftOut.new.search_left_out(input) }

    context 'a number of argument elements is 9,999 and sum of them is less than sum of 1 to 10,000' do
      let(:input) do
        shuffled_9999_numbers = (1..10000).to_a.shuffle
        shuffled_9999_numbers.delete(1234)
        shuffled_9999_numbers
      end

      it 'retruns left out number' do
        expect(subject).to eq(1234)
      end
    end

    context 'a number of argument elements is not 9,999' do
      let(:input) do
        (1..10000).to_a.shuffle
      end

      it 'raise ArgumentError' do
        expect{subject}.to raise_error(ArgumentError)
      end
    end

    context 'sum of argument elements is not less than sum of 1 to 10,000' do
      let(:input) do
        shuffled_9999_numbers = (3..10000).to_a.shuffle
        shuffled_9999_numbers << 3
      end

      it 'raise ArgumentError' do
        expect{subject}.to raise_error(ArgumentError)
      end
    end
  end
end
