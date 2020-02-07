require 'rails_helper'

RSpec.describe "congregations/index", type: :view do
  before(:each) do
    assign(:congregations, [
      Congregation.create!(
        :name => "Name",
        :congregation_number => "Congregation Number"
      ),
      Congregation.create!(
        :name => "Name",
        :congregation_number => "Congregation Number"
      )
    ])
  end

  it "renders a list of congregations" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Congregation Number".to_s, :count => 2
  end
end
