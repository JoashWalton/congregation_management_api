require 'rails_helper'

RSpec.describe "public_talks/index", type: :view do
  before(:each) do
    assign(:public_talks, [
      PublicTalk.create!(
        :public_talk_number => 2,
        :public_talk_title => "Public Talk Title",
        :public_talk_subject => "Public Talk Subject"
      ),
      PublicTalk.create!(
        :public_talk_number => 2,
        :public_talk_title => "Public Talk Title",
        :public_talk_subject => "Public Talk Subject"
      )
    ])
  end

  it "renders a list of public_talks" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Public Talk Title".to_s, :count => 2
    assert_select "tr>td", :text => "Public Talk Subject".to_s, :count => 2
  end
end
