require 'rails_helper'

RSpec.describe "souls/index", type: :view do
  before(:each) do
    assign(:souls, [
      Soul.create!(
        :first_name => "First Name",
        :middle_name => "Middle Name",
        :last_name => "Last Name",
        :unique_identifier => "Unique Identifier"
      ),
      Soul.create!(
        :first_name => "First Name",
        :middle_name => "Middle Name",
        :last_name => "Last Name",
        :unique_identifier => "Unique Identifier"
      )
    ])
  end

  it "renders a list of souls" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Middle Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Unique Identifier".to_s, :count => 2
  end
end
