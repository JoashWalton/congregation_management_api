require 'rails_helper'

RSpec.describe "public_talks/show", type: :view do
  before(:each) do
    @public_talk = assign(:public_talk, PublicTalk.create!(
      :public_talk_number => 2,
      :public_talk_title => "Public Talk Title",
      :public_talk_subject => "Public Talk Subject"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Public Talk Title/)
    expect(rendered).to match(/Public Talk Subject/)
  end
end
