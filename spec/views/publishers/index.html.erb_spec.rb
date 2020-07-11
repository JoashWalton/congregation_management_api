require 'rails_helper'

RSpec.describe "publishers/index", type: :view do
  before(:each) do
    assign(:publishers, [
      Publisher.create!(
        :baptized => false,
        :other_sheep => false,
        :anointed => false
      ),
      Publisher.create!(
        :baptized => false,
        :other_sheep => false,
        :anointed => false
      )
    ])
  end

  it "renders a list of publishers" do
    render
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
