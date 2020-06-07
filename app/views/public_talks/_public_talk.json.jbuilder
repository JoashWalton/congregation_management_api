json.extract! public_talk, :id, :public_talk_number, :public_talk_title, :public_talk_subject, :created_at, :updated_at
json.url public_talk_url(public_talk, format: :json)
