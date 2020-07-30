require 'rails_helper'

RSpec.describe "contact_informations/show", type: :view do
  let(:publisher) { create :publisher }
  before(:each) do
    @contact_information = assign(:contact_information, ContactInformation.create!(
      :mailing_address => "Address",
      :apartment => "Apartment",
      :mailing_city => "City",
      :mailing_state => "State",
      :mailing_zip_code => "Zipcode",
      :country => "Country",
      :home_phone_number => "Home Phone Number",
      :mobile_phone_number => "Mobile Phone Number",
      :personal_email => "Email",
      publisher_id: publisher.id
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/Apartment/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/Zipcode/)
    expect(rendered).to match(/Country/)
    expect(rendered).to match(/Home Phone Number/)
    expect(rendered).to match(/Mobile Phone Number/)
    expect(rendered).to match(/Email/)
  end
end
