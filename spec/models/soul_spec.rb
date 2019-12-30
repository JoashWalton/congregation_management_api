require 'rails_helper'

RSpec.describe Soul, type: :model do
  let(:soul_object) { build :soul }

  describe '#first_name' do
    it 'will be a String' do
      expect(soul_object.first_name).to be_a String
    end

    context 'when invalid values are passed in' do 
      context 'when a blank value' do
        before { soul_object.first_name = '' }
        it 'will return an error' do
          soul_object.save
          expect(soul_object.errors).to include(:first_name)
        end
      end

      context 'when a nil value' do
        before { soul_object.first_name = nil }
        it 'will return an error' do
          soul_object.save
          expect(soul_object.errors).to include(:first_name)
        end
      end
    end
  end

  describe '#middle_name' do 
    it 'will be a String' do
      expect(soul_object.middle_name).to be_a String
    end
  end

  describe '#last_name' do 
    it 'will be a String' do
      expect(soul_object.last_name).to be_a String
    end

    context 'when invalid values are passed in' do 
      context 'when a blank value' do
        before { soul_object.last_name = '' }
        it 'will return an error' do
          soul_object.save
          expect(soul_object.errors).to include(:last_name)
        end
      end

      context 'when a nil value' do
        before { soul_object.last_name = nil }
        it 'will return an error' do
          soul_object.save
          expect(soul_object.errors).to include(:last_name)
        end
      end
    end
  end

  describe '#birth_date' do 
    it 'will be a Date' do
      expect(soul_object.birth_date).to be_a Date
    end

    context 'when invalid values are passed in' do 
      context 'when a blank value' do
        before { soul_object.birth_date = '' }
        it 'will return an error' do
          soul_object.save
          expect(soul_object.errors).to include(:birth_date)
        end
      end

      context 'when a nil value' do
        before { soul_object.birth_date = nil }
        it 'will return an error' do
          soul_object.save
          expect(soul_object.errors).to include(:birth_date)
        end
      end
    end
  end

  describe '#unique_identifier' do 
    let(:custom_uniq_identifier) { 'fancy string that means an individual' } 

    it 'will be a String, after a save on the Soul object' do
      soul_object.save
      expect(soul_object.reload.unique_identifier).to be_a String
    end

    it 'cannot be set by a user, even before a creation' do 
      soul_object.unique_identifier = custom_uniq_identifier
      soul_object.save
      expect(soul_object.unique_identifier).to_not be(custom_uniq_identifier)
    end

    it 'cannot be changed, especially after creation' do 
      soul_object.save
      soul_object.unique_identifier = custom_uniq_identifier
      soul_object.save
      expect(soul_object.reload.unique_identifier).to_not be(custom_uniq_identifier)
    end
  end

  describe '#gender' do 
    it 'will be a String' do
      expect(soul_object.gender).to be_a String
    end

    context 'when invalid values are passed in' do 
      context 'when a blank value' do
        before { soul_object.gender = '' }
        it 'will return an error' do
          soul_object.save
          expect(soul_object.errors).to include(:gender)
        end
      end

      context 'when a nil value' do
        before { soul_object.gender = nil }
        it 'will return an error' do
          soul_object.save
          expect(soul_object.errors).to include(:gender)
        end
      end
    end
  end
end
