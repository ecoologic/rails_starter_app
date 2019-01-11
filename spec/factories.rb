FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "email#{n}@pm.me" }
    password { "Pass_123" }
    role { "basic" }
  end
end
