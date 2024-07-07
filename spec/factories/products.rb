FactoryBot.define do
  factory :product do
    id { 1 }
    name { "MyString" }
    identifier { "MyString" }
    quantity { 1 }
    price { 1.5 }
    instructions { "MyText" }
    category_id { "MyString" }
  end
end
