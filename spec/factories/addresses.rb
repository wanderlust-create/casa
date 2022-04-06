FactoryBot.define do
  factory :address do
    street_address { "313 Big O'Cool St" }
    unit { "Awesome unit 3" }
    city { "Silly City" }
    state { "ST" }
    zip { "11101" }
    user { User.first || create(:user) }
  end
end
