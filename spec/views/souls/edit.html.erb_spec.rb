require 'rails_helper'

RSpec.describe "souls/edit", type: :view do
  before(:each) do
    @soul = assign(:soul, Soul.create!(
      :first_name => "MyString",
      :middle_name => "MyString",
      :last_name => "MyString",
      :unique_identifier => "MyString",
      :birth_date => "MyString",
      :gender => "MyString"
    ))
  end

  it "renders the edit soul form" do
    render

    assert_select "form[action=?][method=?]", soul_path(@soul), "post" do

      assert_select "input[name=?]", "soul[first_name]"

      assert_select "input[name=?]", "soul[middle_name]"

      assert_select "input[name=?]", "soul[last_name]"

      assert_select "input[name=?]", "soul[unique_identifier]"

      assert_select "input[name=?]", "soul[birth_date]"

      assert_select "input[name=?]", "soul[gender]"
    end
  end
end
