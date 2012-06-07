FactoryGirl.define do
  factory :user do
    name                    "Charlie Harry"
    email                   "user@example.com"
    password                "secret"
    password_confirmation   "secret"
  end
end