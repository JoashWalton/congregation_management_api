require 'rails_helper'

RSpec.describe "public_talks/new", type: :view do
  before(:each) do
    assign(:public_talk, PublicTalk.new(
      :number => 1,
      :public_talk_title => "MyString",
      :public_talk_note => "MyString",
      :file_pdf_url => "MyString",
      :file_doc_url => "MyString"
    ))
  end

  it "renders new public_talk form" do
    render

    assert_select "form[action=?][method=?]", public_talks_path, "post" do

      assert_select "input[name=?]", "public_talk[number]"

      assert_select "input[name=?]", "public_talk[public_talk_title]"

      assert_select "input[name=?]", "public_talk[public_talk_note]"

      assert_select "input[name=?]", "public_talk[file_pdf_url]"

      assert_select "input[name=?]", "public_talk[file_doc_url]"
    end
  end
end
