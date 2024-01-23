FactoryBot.define do
  factory :book do
    title { Faker::Book.title }
    description {Faker::Lorem.paragraph }
    page_count { rand(80..500) }
    published_at { Faker::Date.between(from: 20.years.ago, to: Date.yesterday) }
    author { Faker::Book.author }
  end
end
