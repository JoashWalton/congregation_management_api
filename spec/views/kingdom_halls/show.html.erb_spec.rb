require 'rails_helper'

RSpec.describe "kingdom_halls/show", type: :view do
  before(:each) do
    @kingdom_hall = assign(:kingdom_hall, KingdomHall.create!(
      :address => "Address",
      :auditorium_count => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/2/)
  end
end
