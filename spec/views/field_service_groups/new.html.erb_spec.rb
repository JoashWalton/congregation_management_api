require 'rails_helper'

RSpec.describe "field_service_groups/new", type: :view do
  before(:each) do
    assign(:field_service_group, FieldServiceGroup.new(
      :name => "MyString",
      :location => "MyString"
    ))
  end

  it "renders new field_service_group form" do
    render

    assert_select "form[action=?][method=?]", field_service_groups_path, "post" do

      assert_select "input[name=?]", "field_service_group[name]"

      assert_select "input[name=?]", "field_service_group[location]"
    end
  end
end
