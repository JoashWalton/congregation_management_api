require 'rails_helper'

RSpec.describe "field_service_groups/index", type: :view do
  before(:each) do
    assign(:field_service_groups, [
      FieldServiceGroup.create!(
        :name => "Name",
        :location => "Location"
      ),
      FieldServiceGroup.create!(
        :name => "Name",
        :location => "Location"
      )
    ])
  end

  it "renders a list of field_service_groups" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
  end
end
