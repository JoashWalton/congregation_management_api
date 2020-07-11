require 'rails_helper'

RSpec.describe "congregations/new", type: :view do
  before(:each) do
    assign(:congregation, Congregation.new(
      :name => "MyString",
      :congregation_number => "MyString"
    ))
  end

  it "renders new congregation form" do
    render

    assert_select "form[action=?][method=?]", congregations_path, "post" do

      assert_select "input[name=?]", "congregation[name]"

      assert_select "input[name=?]", "congregation[congregation_number]"
    end
  end
end
