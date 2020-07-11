require 'rails_helper'

RSpec.describe "contact_informations/edit", type: :view do
  before(:each) do
    @contact_information = assign(:contact_information, ContactInformation.create!(
      :address => "MyString",
      :apartment => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zipcode => "MyString",
      :country => "MyString",
      :home_phone_number => "MyString",
      :mobile_phone_number => "MyString",
      :email => "MyString"
    ))
  end

  it "renders the edit contact_information form" do
    render

    assert_select "form[action=?][method=?]", contact_information_path(@contact_information), "post" do

      assert_select "input[name=?]", "contact_information[address]"

      assert_select "input[name=?]", "contact_information[apartment]"

      assert_select "input[name=?]", "contact_information[city]"

      assert_select "input[name=?]", "contact_information[state]"

      assert_select "input[name=?]", "contact_information[zipcode]"

      assert_select "input[name=?]", "contact_information[country]"

      assert_select "input[name=?]", "contact_information[home_phone_number]"

      assert_select "input[name=?]", "contact_information[mobile_phone_number]"

      assert_select "input[name=?]", "contact_information[email]"
    end
  end
end
