FactoryBot.define do
  factory :public_speaker do

    association :congregation, factory: :congregation
    association :publisher, factory: :publisher
  end
end
