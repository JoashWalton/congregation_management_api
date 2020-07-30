FactoryBot.define do
  factory :contact_information do
    mailing_address { Faker::Address.street_address }
    apartment { Faker::Address.secondary_address }
    mailing_city { Faker::Address.city }
    mailing_state { [Faker::Address.state, Faker::Address.state_abbr].sample }
    mailing_zip_code { Faker::Address.zip_code }
    country { Faker::Address.country }
    home_phone_number { Faker::PhoneNumber.cell_phone }
    mobile_phone_number { Faker::PhoneNumber.cell_phone }
    personal_email { Faker::Internet.email }
    theocratic_email { Faker::Internet.email(domain: 'jwpub.org') }
    post_office_box_number { "PO Box #{rand(1000)}" }
    post_office_box_city { Faker::Address.city  }
    post_office_box_state { [Faker::Address.state, Faker::Address.state_abbr].sample }
    post_office_box_zip_code { Faker::Address.zip_code }

    association :publisher, factory: :publisher, strategy: :create
  end
end
