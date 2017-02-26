FactoryGirl.define do
  factory :user do
    sequence(:email) { |x| "franklin#{x}@example.com" }
    password 'ChangeMe12'
    dialect_id 1 
    status 0
  end
end
