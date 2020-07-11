require 'rails_helper'

RSpec.describe ContactInformation, type: :model do
  let(:contact_information_object) { build :contact_information }

  describe '#mailing_address' do
    it 'will be a String' do 
      expect(contact_information_object.mailing_address).to be_a String
    end
  end

  describe '#apartment' do 
    it 'will be a String' do 
      expect(contact_information_object.apartment).to be_a String
    end
  end

  describe '#mailing_city' do 
    it 'will be a String' do 
      expect(contact_information_object.mailing_city).to be_a String
    end
  end

  describe '#mailing_state' do 
    it 'will be a String' do 
      expect(contact_information_object.mailing_state).to be_a String
    end
  end

  describe '#mailing_zip_code' do 
    it 'will be a String' do 
      expect(contact_information_object.mailing_zip_code).to be_a String
    end
  end

  describe '#country' do 
    it 'will be a String' do 
      expect(contact_information_object.country).to be_a String
    end
  end

  describe '#mailing_state' do 
    it 'will be a String' do 
      expect(contact_information_object.mailing_state).to be_a String
    end
  end

  describe '#home_phone_number' do 
    it 'will be a String' do 
      expect(contact_information_object.home_phone_number).to be_a String
    end
  end

  describe '#mobile_phone_number' do 
    it 'will be a String' do 
      expect(contact_information_object.mobile_phone_number).to be_a String
    end
  end

  describe '#personal_email' do 
    it 'will be a String' do 
      expect(contact_information_object.personal_email).to be_a String
    end
  end

  describe '#theocratic_email' do 
    it 'will be a String' do 
      expect(contact_information_object.theocratic_email).to be_a String
    end
  end

  describe '#post_office_box_number' do 
    it 'will be a String' do 
      expect(contact_information_object.post_office_box_number).to be_a String
    end
  end

  describe '#post_office_box_city' do 
    it 'will be a String' do 
      expect(contact_information_object.post_office_box_city).to be_a String
    end
  end

  describe '#post_office_box_state' do 
    it 'will be a String' do 
      expect(contact_information_object.post_office_box_state).to be_a String
    end
  end

  describe '#post_office_box_city' do 
    it 'will be a String' do 
      expect(contact_information_object.post_office_box_city).to be_a String
    end
  end

  describe '#post_office_box_zip_code' do 
    it 'will be a String' do 
      expect(contact_information_object.post_office_box_zip_code).to be_a String
    end
  end
end
