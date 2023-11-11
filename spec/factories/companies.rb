FactoryBot.define do
  factory :company do
    email                 {Faker::Internet.email}
    password              {Faker::Internet.password(min_length: 6)}
    password_confirmation {password}
    company_name          {'株式会社フジしねま'}
    company_name_kana     {'かぶしきがいしゃふじしねま'}
    user_name             {'山田孝'}
    user_name_kana        {'やまだたかし'}
    post_code             {'123-1234'}
    address               {'神奈川県上島市上町11-1'}
    telephone             {Faker::Number.number(digits: 11)}
  end
end

