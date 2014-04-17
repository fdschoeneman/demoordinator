# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :address_1 do
    address_2 "MyString"
    city "MyString"
    state "MyString"
    zip "MyString"
    country "MyString"
    public_phone "MyString"
    public_email "MyString"
    public_url "MyString"
    addressable_type "MyString"
    addressable_id 1
    name "MyString"
  end
end
