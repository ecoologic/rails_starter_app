FactoryBot.define do
  factory :user, aliases: %i[creator] do
    sequence(:email) { |n| "email#{n}@pm.me" }
    password { "Pass_123" }
  end

  factory :page, aliases: %i[parent_page] do
    creator
    sequence(:name) { |n| "Website#{n}" }
    sequence(:url) { |n| "https://website#{n}.com" }
    html { %(<script>alert("Danger: User input!!")</script>) }
  end
end
