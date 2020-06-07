require 'rails_helper'

RSpec.describe "public_talks/edit", type: :view do
  before(:each) do
    @public_talk = assign(:public_talk, PublicTalk.create!(
      :public_talk_number => 1,
      :public_talk_title => "MyString",
      :public_talk_subject => "MyString"
    ))
  end

  it "renders the edit public_talk form" do
    render

    assert_select "form[action=?][method=?]", public_talk_path(@public_talk), "post" do

      assert_select "input[name=?]", "public_talk[public_talk_number]"

      assert_select "input[name=?]", "public_talk[public_talk_title]"

      assert_select "input[name=?]", "public_talk[public_talk_subject]"
    end
  end
end
