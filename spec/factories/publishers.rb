FactoryBot.define do
  factory :publisher do
    baptized { false }
    baptism_date { "2020-12-12" }
    unbaptized { false }
    unbaptized_date { "2019-12-12" }
    other_sheep { false }
    anointed { false }
    enrolled_in_school { false }
    school_enrollment_date { "2020-4-22" }

    association :soul, factory: :soul
    association :congregation, factory: :congregation
  end
end
