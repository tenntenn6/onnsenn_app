FactoryBot.define do
  factory :spa do
    association :company

    name                 {Faker::Company.name }
    detail               {Faker::Lorem.paragraph }
    facility             {Faker::Lorem.paragraph }
    business_hours       {Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :default) }
    access               {'高知県南国市上町11-1'}
    
    after(:build) do |spa|
      spa.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
