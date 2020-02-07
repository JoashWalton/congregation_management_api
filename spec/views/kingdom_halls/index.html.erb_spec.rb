require 'rails_helper'

RSpec.describe "kingdom_halls/index", type: :view do
  before(:each) do
    assign(:kingdom_halls, [
      KingdomHall.create!(
        :address => "Address",
        :auditorium_count => 2
      ),
      KingdomHall.create!(
        :address => "Address",
        :auditorium_count => 2
      )
    ])
  end

  it "renders a list of kingdom_halls" do
    render
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
