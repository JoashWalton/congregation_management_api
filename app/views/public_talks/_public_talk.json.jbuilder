json.extract! public_talk, :id, :number, :public_talk_title, :public_talk_note, :revision_date, :file_pdf_url, :file_doc_url, :created_at, :updated_at
json.url public_talk_url(public_talk, format: :json)
