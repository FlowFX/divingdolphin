FactoryBot.define do
  factory :performance do
    association :exercise

    date { Date.today }
  end
end
