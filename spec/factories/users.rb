FactoryBot.define do
  factory :user do
    email { 'user@example.com' }
    password { 'Password1!' }
    name { 'John Smith' }
  end
end
