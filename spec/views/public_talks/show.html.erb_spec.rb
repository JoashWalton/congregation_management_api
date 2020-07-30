require 'rails_helper'

RSpec.describe "public_talks/show", type: :view do
  before(:each) do
    @public_talk = assign(:public_talk, PublicTalk.create!(
      :number => 2,
      :public_talk_title => "Public Talk Title",
      :public_talk_note => "Public Talk Note",
      :file_pdf_url => "File Pdf Url",
      :file_doc_url => "File Doc Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Public Talk Title/)
    expect(rendered).to match(/Public Talk Note/)
    expect(rendered).to match(/File Pdf Url/)
    expect(rendered).to match(/File Doc Url/)
  end
end
