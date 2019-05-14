FactoryBot.define do
  factory :message do
    content { "MyText" }
  end
  factory :user do
    sequence(:email) { |n| "email#{n}@pm.me" }
    password { "Pass_123" }
    role { "basic" }
  end
end
