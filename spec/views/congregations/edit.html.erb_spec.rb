require 'rails_helper'

RSpec.describe "congregations/edit", type: :view do
  before(:each) do
    @congregation = assign(:congregation, Congregation.create!(
      :name => "MyString",
      :congregation_number => "MyString"
    ))
  end

  it "renders the edit congregation form" do
    render

    assert_select "form[action=?][method=?]", congregation_path(@congregation), "post" do

      assert_select "input[name=?]", "congregation[name]"

      assert_select "input[name=?]", "congregation[congregation_number]"
    end
  end
end
