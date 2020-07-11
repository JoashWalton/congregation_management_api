FactoryBot.define do
  factory :soul do
    first_name { Faker::Name.first_name }
    middle_name { Faker::Name.middle_name }
    last_name { Faker::Name.last_name }
    birth_date { Faker::Date.backward(days: 35) }
    # unique_identifier { SecureRandom.uuid }
    gender { %w[M F].sample }
    baptism_date { Faker::Date.backward(days: 21) }
    death_date { Faker::Date.backward(days: 7) }
  end
end
