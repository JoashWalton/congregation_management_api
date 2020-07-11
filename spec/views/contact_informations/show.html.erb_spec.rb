require 'rails_helper'

RSpec.describe "contact_informations/show", type: :view do
  before(:each) do
    @contact_information = assign(:contact_information, ContactInformation.create!(
      :address => "Address",
      :apartment => "Apartment",
      :city => "City",
      :state => "State",
      :zipcode => "Zipcode",
      :country => "Country",
      :home_phone_number => "Home Phone Number",
      :mobile_phone_number => "Mobile Phone Number",
      :email => "Email"
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
