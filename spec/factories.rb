FactoryGirl.define do
  factory :user do
    name     "Berjan Bruens"
    email    "berjan@example.com"
    password "foobar"
    password_confirmation "foobar"
  end
end