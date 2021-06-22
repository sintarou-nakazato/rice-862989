FactoryBot.define do
  factory :food do
    title                  { 'ご飯' }
    catch_copy             { 'こんにちは' }
    menu                   { '卵3個' }
    association :user

    after(:build) do |food|
      food.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
