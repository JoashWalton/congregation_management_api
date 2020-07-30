require 'rails_helper'

RSpec.describe "contact_informations/index", type: :view do
  let(:publisher_one) { create :publisher }
  let(:publisher_two) { create :publisher }
  before(:each) do
    assign(:contact_informations, [
      ContactInformation.create!(
        :mailing_address => "Address",
        :apartment => "Apartment",
        :mailing_city => "City",
        :mailing_state => "State",
        :mailing_zip_code => "Zipcode",
        :country => "Country",
        :home_phone_number => "Home Phone Number",
        :mobile_phone_number => "Mobile Phone Number",
        :personal_email => "Email",
        publisher_id: publisher_one.id
      ),
      ContactInformation.create!(
        :mailing_address => "Address",
        :apartment => "Apartment",
        :mailing_city => "City",
        :mailing_state => "State",
        :mailing_zip_code => "Zipcode",
        :country => "Country",
        :home_phone_number => "Home Phone Number",
        :mobile_phone_number => "Mobile Phone Number",
        :personal_email => "Email",
        publisher_id: publisher_two.id
      )
    ])
  end

  it "renders a list of contact_informations" do
    render
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Apartment".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Zipcode".to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    assert_select "tr>td", :text => "Home Phone Number".to_s, :count => 2
    assert_select "tr>td", :text => "Mobile Phone Number".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
