require 'rails_helper'

RSpec.describe "public_talks/index", type: :view do
  before(:each) do
    assign(:public_talks, [
      PublicTalk.create!(
        :number => 2,
        :public_talk_title => "Public Talk Title",
        :public_talk_note => "Public Talk Note",
        :file_pdf_url => "File Pdf Url",
        :file_doc_url => "File Doc Url"
      ),
      PublicTalk.create!(
        :number => 2,
        :public_talk_title => "Public Talk Title",
        :public_talk_note => "Public Talk Note",
        :file_pdf_url => "File Pdf Url",
        :file_doc_url => "File Doc Url"
      )
    ])
  end

  it "renders a list of public_talks" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Public Talk Title".to_s, :count => 2
    assert_select "tr>td", :text => "Public Talk Note".to_s, :count => 2
    assert_select "tr>td", :text => "File Pdf Url".to_s, :count => 2
    assert_select "tr>td", :text => "File Doc Url".to_s, :count => 2
  end
end
