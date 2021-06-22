FactoryBot.define do
  factory :user do
    name                  { 'yamada' }
    profile               { 'こんにちは' }
    email                 { 'test@example' }
    password              { 'aa12345678' }
    password_confirmation { password }
  end
end
