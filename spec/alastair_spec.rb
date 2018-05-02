require 'alastair'

describe Alastair do
  describe '#name' do
    subject(:salpal) { Alastair.new('Salpal') }
    it "should return the name" do
      expect(salpal.name).to eq 'Salpal'
    end
  end
end
