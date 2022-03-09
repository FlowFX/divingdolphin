FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "athlete#{n}@example.com" }
    password { 'password!!' }
  end
end
