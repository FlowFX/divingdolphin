FactoryBot.define do
  factory :movement do
    sequence(:name) { |n| "movement-#{n}" }
  end
end
