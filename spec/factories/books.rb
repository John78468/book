FactoryBot.define do
  factory :book do
    title { "MyString" }
    description { "MyString" }
    page_count { 1 }
    published_at { "2024-01-19" }
    author { "MyString" }
  end
end
