require 'rails_helper'

RSpec.describe "contact_informations/new", type: :view do
  before(:each) do
    assign(:contact_information, ContactInformation.new(
      :mailing_address => "MyString",
      :apartment => "MyString",
      :mailing_city => "MyString",
      :mailing_state => "MyString",
      :mailing_zip_code => "MyString",
      :country => "MyString",
      :home_phone_number => "MyString",
      :mobile_phone_number => "MyString",
      :personal_email => "MyString"
    ))
  end

  it "renders new contact_information form" do
    render

    assert_select "form[action=?][method=?]", contact_informations_path, "post" do

      assert_select "input[name=?]", "contact_information[mailing_address]"

      assert_select "input[name=?]", "contact_information[apartment]"

      assert_select "input[name=?]", "contact_information[mailing_city]"

      assert_select "input[name=?]", "contact_information[mailing_state]"

      assert_select "input[name=?]", "contact_information[mailing_zip_code]"

      assert_select "input[name=?]", "contact_information[country]"

      assert_select "input[name=?]", "contact_information[home_phone_number]"

      assert_select "input[name=?]", "contact_information[mobile_phone_number]"

      assert_select "input[name=?]", "contact_information[personal_email]"
    end
  end
end
