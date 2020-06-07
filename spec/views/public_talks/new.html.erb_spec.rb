require 'rails_helper'

RSpec.describe "public_talks/new", type: :view do
  before(:each) do
    assign(:public_talk, PublicTalk.new(
      :public_talk_number => 1,
      :public_talk_title => "MyString",
      :public_talk_subject => "MyString"
    ))
  end

  it "renders new public_talk form" do
    render

    assert_select "form[action=?][method=?]", public_talks_path, "post" do

      assert_select "input[name=?]", "public_talk[public_talk_number]"

      assert_select "input[name=?]", "public_talk[public_talk_title]"

      assert_select "input[name=?]", "public_talk[public_talk_subject]"
    end
  end
end
