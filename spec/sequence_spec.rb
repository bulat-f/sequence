require 'spec_helper'
require_relative '../sequence.rb'

describe Sequence do
  describe '#to_a' do
    let(:sequence) { Sequence.new('1', 10) }

    it { expect(sequence.to_a.length).to eq(10) }
    it { expect(sequence.to_a.map(&:to_s)).to include('111221') }
  end

  describe '#to_s' do
    let(:sequence) { Sequence.new('1', 3) }

    it { expect(sequence.to_s).to eq("1\n11\n21") }
  end
end
