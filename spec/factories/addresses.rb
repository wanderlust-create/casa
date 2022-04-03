FactoryBot.define do
  factory :address do
    street_address { "MyString" }
    unit { "MyString" }
    city { "MyString" }
    state { "MyString" }
    zip { "MyString" }
    user { nil }
  end
end
