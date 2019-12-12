require 'rails_helper'

RSpec.describe "publishers/new", type: :view do
  before(:each) do
    assign(:publisher, Publisher.new(
      :baptized => false,
      :other_sheep => false,
      :anointed => false
    ))
  end

  it "renders new publisher form" do
    render

    assert_select "form[action=?][method=?]", publishers_path, "post" do

      assert_select "input[name=?]", "publisher[baptized]"

      assert_select "input[name=?]", "publisher[other_sheep]"

      assert_select "input[name=?]", "publisher[anointed]"
    end
  end
end
