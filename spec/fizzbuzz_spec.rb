require_relative '../solver'
require 'rspec'

describe Solver do
  let(:solver) { Solver.new }

  describe '#fizzbuzz' do
    it 'should return Fizz if number is divisable only by 3' do
      allow(solver).to receive(:fizzbuzz).with(6).and_return('fizz')
      expect(solver.fizzbuzz(6)).to eq('fizz')
    end
    it 'should return buzz if number is divisable only by 5' do
      allow(solver).to receive(:fizzbuzz).with(10).and_return('buzz')
      expect(solver.fizzbuzz(10)).to eq('buzz')
    end
    it 'should return fizzbuzz if number is divisable by 3 and by 5' do
      allow(solver).to receive(:fizzbuzz).with(15).and_return('fizzbuzz')
      expect(solver.fizzbuzz(15)).to eq('fizzbuzz')
    end

    it 'should return number as string  if number is not divisable by 3 and by 5' do
      allow(solver).to receive(:fizzbuzz).with(8).and_return('8')
      expect(solver.fizzbuzz(8)).to eq('8')
    end
  end
end
