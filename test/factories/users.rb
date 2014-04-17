# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    email     "testuser@example.com"
    password  "password"
  end
end
