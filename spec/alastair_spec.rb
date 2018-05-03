require 'alastair'

describe Alastair do
  subject(:salpal) { Alastair.new('Salpal') }
  describe '#name' do
    it "should return the name" do
      expect(salpal.name).to eq 'Salpal'
    end
  end
  describe '#health' do
    it 'should return 100 on intiialize' do
      expect(salpal.health).to eq 100
    end
  end
end
