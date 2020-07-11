require 'rails_helper'

RSpec.describe "publishers/edit", type: :view do
  before(:each) do
    @publisher = assign(:publisher, Publisher.create!(
      :baptized => false,
      :other_sheep => false,
      :anointed => false
    ))
  end

  it "renders the edit publisher form" do
    render

    assert_select "form[action=?][method=?]", publisher_path(@publisher), "post" do

      assert_select "input[name=?]", "publisher[baptized]"

      assert_select "input[name=?]", "publisher[other_sheep]"

      assert_select "input[name=?]", "publisher[anointed]"
    end
  end
end
