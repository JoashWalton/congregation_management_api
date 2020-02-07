require 'rails_helper'

RSpec.describe "field_service_groups/edit", type: :view do
  before(:each) do
    @field_service_group = assign(:field_service_group, FieldServiceGroup.create!(
      :name => "MyString",
      :location => "MyString"
    ))
  end

  it "renders the edit field_service_group form" do
    render

    assert_select "form[action=?][method=?]", field_service_group_path(@field_service_group), "post" do

      assert_select "input[name=?]", "field_service_group[name]"

      assert_select "input[name=?]", "field_service_group[location]"
    end
  end
end
