FactoryBot.define do
  factory :public_talk do
    number { 1 }
    public_talk_title { "MyString" }
    public_talk_note { "MyString" }
    revision_date { "2020-07-11" }
    file_pdf_url { "MyString" }
    file_doc_url { "MyString" }
  end
end
