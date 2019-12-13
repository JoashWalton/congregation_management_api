json.extract! contact_information, :id, :address, :apartment, :city, :state, :zipcode, :country, :home_phone_number, :mobile_phone_number, :email, :created_at, :updated_at
json.url contact_information_url(contact_information, format: :json)
