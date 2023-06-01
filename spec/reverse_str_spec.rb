require_relative '../solver'
require 'rspec'
require 'rspec/mocks'

describe Solver do
  let(:solver) { Solver.new }

  describe '#reverse_string' do
    it 'takes string as a parameter and reverses it' do
      allow(solver).to receive(:reverse_string).with('Hello').and_return('olleH')

      expect(solver.reverse_string('Hello')).to eq('olleH')
    end
  end
end
