# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    name "蔵馬"
    sequence(:email) { |n| "yuyu#{n}@gmail.com" }
    password "password"
    image "http://localhost:3000/kurama "
  end
end
