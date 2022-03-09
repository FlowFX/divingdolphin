FactoryBot.define do
  factory :performance do
    association :exercise
    association :user

    date { Date.today }
  end
end
