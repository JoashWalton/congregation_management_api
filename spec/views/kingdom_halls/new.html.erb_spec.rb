require 'rails_helper'

RSpec.describe "kingdom_halls/new", type: :view do
  before(:each) do
    assign(:kingdom_hall, KingdomHall.new(
      :address => "MyString",
      :auditorium_count => 1
    ))
  end

  it "renders new kingdom_hall form" do
    render

    assert_select "form[action=?][method=?]", kingdom_halls_path, "post" do

      assert_select "input[name=?]", "kingdom_hall[address]"

      assert_select "input[name=?]", "kingdom_hall[auditorium_count]"
    end
  end
end
