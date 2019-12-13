require 'rails_helper'

RSpec.describe "contact_informations/index", type: :view do
  before(:each) do
    assign(:contact_informations, [
      ContactInformation.create!(
        :address => "Address",
        :apartment => "Apartment",
        :city => "City",
        :state => "State",
        :zipcode => "Zipcode",
        :country => "Country",
        :home_phone_number => "Home Phone Number",
        :mobile_phone_number => "Mobile Phone Number",
        :email => "Email"
      ),
      ContactInformation.create!(
        :address => "Address",
        :apartment => "Apartment",
        :city => "City",
        :state => "State",
        :zipcode => "Zipcode",
        :country => "Country",
        :home_phone_number => "Home Phone Number",
        :mobile_phone_number => "Mobile Phone Number",
        :email => "Email"
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
