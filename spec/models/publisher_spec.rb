require 'rails_helper'

RSpec.describe Publisher, type: :model do
  let(:publisher_object) { build :publisher }

  describe '#baptized' do
    it 'will be a  Boolean' do 
      expect(publisher_object.baptized).to be_boolean
    end
  end

  describe '#baptism_date' do 
    it 'will be a  Boolean' do 
      expect(publisher_object.baptism_date).to be_a Date
    end
  end

  describe '#other_sheep' do 
    it 'will be a  Boolean' do 
      expect(publisher_object.other_sheep).to be_boolean
    end
  end

  describe '#anointed' do 
    it 'will be a  Boolean' do 
      expect(publisher_object.anointed).to be_boolean
    end
  end
end
