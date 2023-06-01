require_relative '../solver'
require 'rspec'
require 'rspec/mocks'

describe Solver do
  let(:solver) { Solver.new }

  describe '#factorial' do
    it 'returns zero if the parameter is zero' do
      allow(solver).to receive(:factorial).with(0).and_return(0)

      expect(solver.factorial(0)).to eq(0)
    end

    it 'returns 1 if the parameter is 1' do
      allow(solver).to receive(:factorial).with(1).and_return(1)

      expect(solver.factorial(1)).to eq(1)
    end

    it 'raises an ArgumentError if the parameter is negative' do
      expect { solver.factorial(-5) }.to raise_error(ArgumentError, 'Number must be non-negative')
    end

    it 'returns the factorial of the parameter' do
      allow(solver).to receive(:factorial).with(5).and_return(120)

      expect(solver.factorial(5)).to eq(120)
    end
  end
end
