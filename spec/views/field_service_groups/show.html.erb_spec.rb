require 'rails_helper'

RSpec.describe "field_service_groups/show", type: :view do
  before(:each) do
    @field_service_group = assign(:field_service_group, FieldServiceGroup.create!(
      :name => "Name",
      :location => "Location"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Location/)
  end
end
