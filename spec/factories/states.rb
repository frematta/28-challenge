FactoryBot.define do
  factory :state do
    id { 1 }
    name { "MyString" }
    has_service { false }
    minimum_age { 1 }
    abbreviation { "XX" }
  end
end
